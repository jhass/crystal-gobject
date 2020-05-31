class Namespace
  def initialize(@namespace : String, @version : String? = nil)
    self.require
  end

  def_equals_and_hash @namespace

  def require
    GIRepository::Repository.instance.require @namespace, @version
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
    end

    File.open(File.join(directory, lib_filepath), "w") do |file|
      Crout.build(file) do |builder|
        lib_definition builder, false
      end
    end
  end

  def lib_definition(builder, inline = true)
    unless inline
      builder.section do
        GIRepository::Repository.instance.dependencies(@namespace).each do |dependency|
          namespace, version = dependency
          line call "require", literal("./#{Namespace.new(namespace).lib_filename}")
        end
      end
    end

    libraries = GIRepository::Repository.instance.shared_library(@namespace).try(&.split(',')) || Array(String).new
    libraries.map! { |library| library[/lib([^\/]+)\.(?:so|.+?\.dylib).*/, 1] }

    libraries.each do |library|
      builder.annotation "Link", builder.literal(library)
    end

    builder.def_lib libname do
      infos_by_type = GIRepository::Repository.instance.all_infos(@namespace).group_by(&.info_type)
      types = infos_by_type.keys
      has_callbacks = types.delete(GIRepository::InfoType::CALLBACK)
      types << GIRepository::InfoType::CALLBACK if has_callbacks # Sort callbacks last

      types.each do |type|
        heading = type.to_s.capitalize
        heading += 's' unless heading.ends_with? 's'
        section do
          comment "##########################################"
          comment "#    #{heading}"
          comment "##########################################"
        end

        infos_by_type[type].each do |info|
          next if skip_info? info
          info.lib_definition(builder)
        end
      end
    end
  end

  def wrapper_definitions(builder, source_path = nil)
    wrapper_definition(builder, source_path) do
      module_functions_definition(builder)

      each_info do |info|
        info.wrapper_definition(builder, libname)
      end
    end
  end

  def write_wrapper(directory, name)
    prefix = File.join(directory, GIRepository.filename(@namespace))
    Dir.mkdir_p prefix

    info = GIRepository::Repository.instance.find_by_name(@namespace, name)
    if info
      wrapper_path = File.join(directory, GIRepository.filename(@namespace), "#{GIRepository.filename(info.name)}.cr")
      write_wrapper(wrapper_path, info) { |builder| info.wrapper_definition(builder, libname) }
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
        path ||= "../#{name}" if File.exists? File.join(directory, name)        # Wrapper
        io.puts %(require "#{path}") if path
      end
      io.puts
      io.puts %(require "./*")
    end

    each_info do |info|
      wrapper_path = File.join(directory, GIRepository.filename(@namespace), "#{GIRepository.filename(info.name)}.cr")
      write_wrapper(wrapper_path, info) { |builder| info.wrapper_definition(builder, libname) }
    end

    write_module_functions_wrapper(directory)
  end

  def write_module_functions_wrapper(directory)
    prefix = File.join(directory, GIRepository.filename(@namespace))
    Dir.mkdir_p prefix
    write_wrapper(File.join(prefix, "module_functions.cr")) { |builder| module_functions_definition(builder) }
  end

  private def each_info
    infos = GIRepository::Repository.instance.all_infos(@namespace).select { |info|
      next false if skip_info? info
      next false if info.is_a? GIRepository::FunctionInfo
      next false if info.is_a? GIRepository::ConstantInfo
      true
    }

    sort_childs_after_parents(infos)

    infos.each do |info|
      yield info
    end
  end

  private def sort_childs_after_parents(infos)
    names = infos.map { |info|
      info.full_constant if info.is_a?(GIRepository::ObjectInfo) || info.is_a?(GIRepository::InterfaceInfo)
    }

    parents = infos.map { |info|
      parent_names = [] of String
      if info.is_a?(GIRepository::ObjectInfo)
        parent = info.parent
        parent_names << parent.full_constant if parent
        parent_names.concat info.interfaces.map(&.full_constant)
      end

      parent_names
    }

    child_index = 0
    while child_index < names.size
      next child_index += 1 if names[child_index].nil?

      swapped = false
      child_index.upto(names.size - 1) do |index|
        if parents[child_index].includes? names[index]
          swap(infos, child_index, index)
          swap(names, child_index, index)
          swap(parents, child_index, index)
          swapped = true
          break
        end
      end

      child_index += 1 unless swapped
    end
  end

  private def swap(items, a, b)
    tmp = items[a]
    items[a] = items[b]
    items[b] = tmp
  end

  private def module_functions_definition(builder)
    builder.section do
      GIRepository::Repository.instance.all_infos(@namespace).select { |info|
        info.is_a?(GIRepository::ConstantInfo)
      }.each(&.wrapper_definition(builder, libname))
    end

    GIRepository::Repository.instance.all_infos(@namespace).select { |info|
      next false if skip_info?(info)
      info.is_a?(GIRepository::FunctionInfo) ? !info.method? : false
    }.each(&.wrapper_definition(builder, libname))
  end

  private def write_wrapper(path, info = nil)
    File.open(path, "w") do |io|
      Crout.build(io) do |builder|
        # Not really the right place for this code
        if info && info.is_a?(GIRepository::ObjectInfo)
          parent = info.parent
          if parent && parent.namespace == @namespace
            io.puts %(require "./#{GIRepository.filename(parent.name)}")
            io.puts
          end
        end

        wrapper_definition(builder) { |builder| yield builder }
      end
    end
  end

  private def wrapper_definition(builder, source_path = nil)
    if source_path
      builder.source_location(source_path) do
        builder.def_module(Namespace.constant(@namespace)) { yield builder }
      end
    else
      builder.def_module(Namespace.constant(@namespace)) { yield builder }
    end
  end

  def self.constant(string)
    "#{string[0].upcase}#{string[1..-1]}"
  end

  private def skip_info?(info)
    case info
    when GIRepository::EnumInfo
      name = info.name
      return true unless name
      return true unless 'A' <= name[0] <= 'Z' # Bug in typelib?
    else
      false
    end
  end
end
