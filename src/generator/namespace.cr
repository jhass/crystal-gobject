class Namespace
  def initialize(@namespace : String)
    self.require
  end

  def_equals_and_hash @namespace

  def require
    GIRepository::Repository.instance.require @namespace
  end

  def lib_definition
    String.build do |io|
      lib_definition io
    end
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
      File.write path, "# Dummy" unless File.exists? path
    end

    File.open(File.join(directory, lib_filepath), "w") do |file|
      lib_definition file
    end
  end

  private def lib_definition(io)
    requires = false
    GIRepository::Repository.instance.dependencies(@namespace).each do |dependency|
      namespace, version = dependency
      io.puts %(require "./#{Namespace.new(namespace).lib_filename}")
      requires = true
    end

    io.puts if requires

    libraries = GIRepository::Repository.instance.shared_library(@namespace).split(',')
    libraries.map! {|library| library[/lib([^\/]+)\.(?:so|.+?\.dylib).*/, 1] }

    libraries.each do |library|
      io.puts %(@[Link("#{library}")])
    end

    io.puts "lib #{libname}"

    GIRepository::Repository.instance.all_infos(@namespace).group_by(&.info_type).each do |type, infos|
      next if type == LibGIRepository::InfoType::CALLBACK
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
      next unless type == LibGIRepository::InfoType::CALLBACK
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

    GIRepository::Repository.instance.all_infos(@namespace).each do |info|
      next if skip_info? info
      next if info.is_a? GIRepository::FunctionInfo
      next if info.is_a? GIRepository::ConstantInfo

      definition = info.wrapper_definition libname, "  "
      next unless definition && !definition.empty?

      wrapper_path = File.join(directory, GIRepository.filename(@namespace), "#{GIRepository.filename(info.name)}.cr")
      write_wrapper wrapper_path, definition, info
    end

    functions = GIRepository::Repository.instance.all_infos(@namespace).select {|info|
      next false if skip_info?(info)
      next true if info.is_a? GIRepository::ConstantInfo
      info.is_a?(GIRepository::FunctionInfo) ? !info.method? : false
    }.map(&.wrapper_definition(libname, "  ")).join("\n")

    write_wrapper File.join(prefix, "module_functions.cr"), functions
  end

  private def write_wrapper(path, content, info=nil)
    File.open(path, "w") do |io|

      # Not really the right place for this code
      if info && info.is_a?(GIRepository::ObjectInfo)
          parent = info.parent
          if parent && parent.namespace == @namespace
            io.puts %(require "./#{GIRepository.filename(parent.name)}")
            io.puts
          end
      end

      io.puts "module #{@namespace.constant}"
      io.puts content
      io.puts "end"
      io.puts
    end
  end

  private def skip_info?(info)
    case info
    when GIRepository::EnumInfo
      return true unless 'A' <= info.name[0] <= 'Z' # Bug in typelib?
    when GIRepository::StructInfo
      return true if info.gtype? # Hide them
    end

    false
  end
end
