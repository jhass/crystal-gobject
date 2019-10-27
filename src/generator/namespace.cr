class Namespace
  def initialize(@namespace : String)
    self.require
  end

  def_equals_and_hash @namespace

  def require
    GIRepository::Repository.instance.require @namespace
  end

  def dependencies
    GIRepository::Repository.instance.dependencies @namespace
  end

  def lib_definition
    String.build do |io|
      lib_definition io
    end
  end

  def name
    @namespace
  end

  def girname
    version = GIRepository::Repository.instance.version(@namespace)
    "#{@namespace}-#{version}.gir"
  end

  def libname
    namespace = "#{@namespace[0].upcase}#{@namespace[1..-1]}"
    "Lib#{namespace}"
  end

  def lib_filename
    "lib_#{GIRepository.filename(@namespace)}"
  end

  def wrapper_filename
    GIRepository.filename(@namespace)
  end

  def lib_filepath
    "#{lib_filename}.cr"
  end

  def wrapper_filepath
    "#{wrapper_filename(@namespace)}.cr"
  end

  def typelib_path
    GIRepository::Repository.instance.typelib_path(@namespace)
  end

  def write(directory)
    write_lib directory
    write_wrappers directory
  end

  def write_lib(directory)
    Dir.mkdir_p directory

    # Ensure all deps are there, even when not generated
    GIRepository::Repository.instance.dependencies(@namespace).each do |dependency|
      namespace, version = dependency
      path = File.join(directory, "#{Namespace.new(namespace).lib_filename}.cr")
      #File.write path, "# Dummy" unless File.exists? path
    end

    File.open(File.join(directory, lib_filepath), "w") do |file|
      lib_definition file, false
    end
  end

  def lib_definition(io, inline=true)
    requires = false
    unless inline
      GIRepository::Repository.instance.dependencies(@namespace).each do |dependency|
        namespace, version = dependency
        io.puts %(require "./#{Namespace.new(namespace).lib_filename}")
        requires = true
      end
    end

    io.puts if requires

    libraries = GIRepository::Repository.instance.shared_library(@namespace).try(&.split(',')) || Array(String).new
    libraries.map! {|library| library[/lib([^\/]+)\.(?:so|.+?\.dylib).*/, 1] }

    libraries.each do |library|
      io.puts %(@[Link("#{library}")])
    end

    io.puts "lib #{libname}"

    GIRepository::Repository.instance.all_infos(@namespace).group_by(&.info_type).each do |type, infos|
      next if type == GIRepository::InfoType::CALLBACK
      heading = type.to_s.capitalize
      heading += 's' unless heading.ends_with? 's'
      io.puts
      io.puts "  ###########################################"
      io.puts "  ##    #{heading}"
      io.puts "  ###########################################"
      io.puts
      infos.each do |info|
        next if skip_info? info
        io.puts info.lib_definition
      end
    end

    GIRepository::Repository.instance.all_infos(@namespace).group_by(&.info_type).each do |type, infos|
      next unless type == GIRepository::InfoType::CALLBACK
      heading = type.to_s.capitalize
      heading += 's' unless heading.ends_with? 's'
      io.puts
      io.puts "  ###########################################"
      io.puts "  ##    #{heading}"
      io.puts "  ###########################################"
      io.puts
      infos.each do |info|
        next if skip_info? info
        io.puts info.lib_definition
      end
    end

    io.puts "end"
    io.puts
  end

  def wrapper_definitions(io, source_path=nil)
    wrapper_definition(io, source_path) do
      io.puts module_functions_definition
      io.puts
      each_info_definition do |info, definition|
        io.puts definition
      end
    end
  end

  def write_wrapper(directory, name)
    prefix = File.join(directory, GIRepository.filename(@namespace))
    Dir.mkdir_p prefix

    info = GIRepository::Repository.instance.find_by_name(@namespace, name)
    if info
      wrapper_path = File.join(directory, GIRepository.filename(@namespace), "#{GIRepository.filename(info.name)}.cr")
      write_wrapper wrapper_path, info, &.puts(info.wrapper_definition(libname, "  "))
    else
      STDERR.puts "Warning: Couldn't find #{@namespace}/#{name}"
    end
  end

  def write_wrappers(directory)
    prefix = File.join(directory, GIRepository.filename(@namespace))
    Dir.mkdir_p prefix

    wrapper_path = File.join(prefix, "#{GIRepository.filename(@namespace)}.cr")
    File.open(wrapper_path, "w") do |io|
      io.puts %(require "../../g_object/wrapped_type")
      io.puts %(require "../#{lib_filename}")
      io.puts
      GIRepository::Repository.instance.dependencies(@namespace).each do |dependency|
        namespace, version = dependency
        name = Namespace.new(namespace).wrapper_filename
        path = "../../#{name}" if File.exists? File.join(directory, "..", name) # Overrides
        path ||= "../#{name}" if File.exists? File.join(directory, name) # Wrapper
        io.puts %(require "#{path}") if path
      end
      io.puts
      io.puts %(require "./*")
    end

    each_info_definition do |info, definition|
      wrapper_path = File.join(directory, GIRepository.filename(@namespace), "#{GIRepository.filename(info.name)}.cr")
      write_wrapper wrapper_path, info, &.puts(definition)
    end

    write_wrapper File.join(prefix, "module_functions.cr"), &.puts module_functions_definition
  end

  private def each_info_definition
    infos = GIRepository::Repository.instance.all_infos(@namespace).select {|info|
      next false if skip_info? info
      next false if info.is_a? GIRepository::FunctionInfo
      next false if info.is_a? GIRepository::ConstantInfo
      true
    }

    sort_childs_before_parents(infos)

    infos.each do |info|
      definition = info.wrapper_definition libname, "  "
      next unless definition && !definition.empty?

      yield info, definition
    end
  end

  private def sort_childs_before_parents(infos)
    names = infos.map {|info| info.full_constant if info.is_a? GIRepository::ObjectInfo }
    parent_names = infos.map {|info|
      parent = info.parent if info.is_a? GIRepository::ObjectInfo
      parent.full_constant if parent
    }

    child_index = 0
    while child_index < names.size
      index = nil
      parent_name = parent_names[child_index] # child has parent?
      index = names.index(parent_name) if parent_name # where's child's parent?
      if index && index > child_index # parent comes after child, swap them
        swap(infos, child_index, index)
        swap(names, child_index, index)
        swap(parent_names, child_index, index)
      else
        child_index += 1 # next one
      end
    end
  end

  private def swap(items, a, b)
    tmp = items[a]
    items[a] = items[b]
    items[b] = tmp
  end

  private def module_functions_definition
    GIRepository::Repository.instance.all_infos(@namespace).select {|info|
      next false if skip_info?(info)
      next true if info.is_a? GIRepository::ConstantInfo
      info.is_a?(GIRepository::FunctionInfo) ? !info.method? : false
    }.map(&.wrapper_definition(libname, "  ")).join("\n")
  end

  private def write_wrapper(path, info=nil)
    File.open(path, "w") do |io|

      # Not really the right place for this code
      if info && info.is_a?(GIRepository::ObjectInfo)
          parent = info.parent
          if parent && parent.namespace == @namespace
            io.puts %(require "./#{GIRepository.filename(parent.name)}")
            io.puts
          end
      end

      wrapper_definition(io) {|io| yield io }
    end
  end

  private def wrapper_definition(io, source_path=nil)
    io.print %(#<loc:"#{source_path}",1,1>) if source_path
    io.puts "module #{@namespace.constant}"
    yield io
    io.puts "end"
    io.puts
  end

  private def skip_info?(info)
    case info
    when GIRepository::EnumInfo
      name = info.name
      return true unless name
      return true unless 'A' <= name[0] <= 'Z' # Bug in typelib?
    when GIRepository::StructInfo
      return true if info.gtype? # Hide them
    end

    false
  end
end