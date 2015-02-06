require "./repository"

class Namespace
  def initialize @namespace
    self.require
  end

  def_equals_and_hash @namespace

  def require
    Repository.instance.require @namespace
  end

  def definition
    String.build do |io|
      definition io
    end
  end

  def definition io
    lib_definition io
  end

  def lib_filename
    "lib_#{@namespace.gsub(/[A-Z][a-z]*(?=[A-Z])/) {|m| "#{m.downcase}_" }.downcase}"
  end

  def lib_filepath
    "#{lib_filename}.cr"
  end

  def write directory
    File.open(File.join(directory, lib_filepath), "w") do |file|
      definition file
    end
  end

  private def lib_definition io
    requires = false
    Repository.instance.dependencies(@namespace).each do |dependency|
      namespace, version = dependency
      io.puts %(require "./#{Namespace.new(namespace).lib_filename}")
      requires = true
    end

    io.puts if requires

    libraries = Repository.instance.shared_library(@namespace).split(',')
    libraries.map! {|library| library[/lib(.+)\.so.+/, 1] }

    libraries.each do |library|
      io.puts %(@[Link("#{library}")])
    end

    io.puts "lib Lib#{@namespace}"

    Repository.instance.all_infos(@namespace).group_by(&.info_type).each do |type, infos|
      heading = type.to_s.capitalize
      heading += 's' unless heading.ends_with? 's'
      io.puts
      io.puts "  ###########################################"
      io.puts "  ##    #{heading}"
      io.puts "  ###########################################"
      io.puts
      infos.each do |info|
        case info
        when EnumInfo
          next unless 'A' <= info.name[0] <= 'Z' # Bug in typelib?
        when StructInfo
          next if info.gtype? # Hide them
        end
        io.puts info.definition
      end
    end

    io.puts "end"
  end
end
