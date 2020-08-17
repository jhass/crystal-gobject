require "xml"
require "option_parser"
require "../g_i_repository"
require "./namespace"
require "compiler/crystal/**"

module Crystal::Config
  def self.path
    Crystal::PATH
  end

  def self.library_path
    {{env("CRYSTAL_CONFIG_LIBRARY_PATH") || env("CRYSTAL_LIBRARY_PATH") || `crystal env CRYSTAL_LIBRARY_PATH`}}
  end
end

struct Crystal::CrystalPath
  def self.default_path
    default = previous_def
    "#{default}#{Process::PATH_DELIMITER}#{gobject_path}"
  end

  def self.gobject_path
    File.expand_path(File.join(__DIR__, "..", "..", "samples", "lib")) # darn hack, is there a better way?
  end
end

class Crystal::Doc::Type
  setter doc : String?

  def doc
    previous_def || @doc
  end
end

class Crystal::Doc::Method
  setter doc : String?

  def doc
    previous_def || @doc
  end
end

class Crystal::Doc::Constant
  setter doc : String?

  def doc
    previous_def || @doc
  end
end

class Generator < Crystal::Doc::Generator
  @girs = {} of String => XML::Node?
  @gir_namespace_cache = {} of String => Bool

  setter gir_namespaces : Array(String) = [] of String
  setter gir_search_paths : Array(String) = ["/usr/share/gir-1.0"]

  def is_gir_namespace?(name : String)
    return @gir_namespace_cache[name] if @gir_namespace_cache.has_key?(name)

    could_load = !GIRepository::Repository.instance.require(name).nil? rescue false
    @gir_namespace_cache[name] = could_load
    could_load
  end

  def must_include?(location : Crystal::Location)
    return true if is_gir_namespace?(location.filename.to_s)

    super
  end

  def gir(namespace : String)
    @girs[namespace] ||= begin
      file = Namespace.new(namespace).girname
      path = @gir_search_paths.map { |path| File.join(path, file) }.find { |path| File.exists?(path) }
      if path
        File.open(path, &->XML.parse(IO)).first_element_child
      else
        STDERR.puts "Couldn't find #{file} in #{@gir_search_paths.join(":")}"
        exit 1
      end
    end
  end

  def gir(type : Crystal::Doc::Type)
    return gir(type.name) if is_gir_namespace?(type.name)
    namespace = type.namespace
    gir(namespace) if namespace
  end

  def gir(method : Crystal::Doc::Method)
    gir(method.type)
  end

  def gir(constant : Crystal::Doc::Constant)
    gir(constant.type)
  end

  def parse_docstring(doc)
    # Just sanitize for now, should parse to markdown later
    doc.gsub(/^#/m, "  #")
  end

  def doc(type : Crystal::Doc::Type)
    set_doc(type, {"class", "record", "union", "enumeration", "bitfield"})

    super
  end

  def doc(method : Crystal::Doc::Method)
    if method.type.kind == :enum
      set_doc(method, {"member"}, Tuple.new, method.type, {"enumeration", "bitfield"})
    elsif method.type.kind == :module
      set_doc(method, {"function"}, {"get_"}, method.type, {"namespace"})
    else
      set_doc(method, {"method", "function", "field"}, {"get_"},
        method.type, {"class", "record", "union"})
    end

    super
  end

  def doc(constant : Crystal::Doc::Constant)
    if constant.type.enum?
      set_doc(constant, {"member"}, Tuple.new, constant.type, {"enumeration", "bitfield"}, item_case: :lower)
    else
      set_doc(constant, {"constant"})
    end

    super
  end

  def set_doc(item, gir_kinds, prefixes = Tuple.new, item_namespace = nil, item_gir_kinds = {"*"}, *, item_case = :given)
    if item.doc.nil?
      gir = gir(item)
      if gir
        namespace = gir.namespace
        namespaces = {"gir" => namespace.href} if namespace
        prefixes = Tuple.new("", *prefixes)
        name = item.name.rchop('?')
        name = name.downcase if item_case == :lower
        kinds = gir_kinds.map { |kind| "self::gir:#{kind}" }.join(" or ")
        names = prefixes.map { |prefix| "@name='#{prefix}#{name}'" }.join(" or ")
        xpath = "//gir:*[#{kinds}][#{names}]/gir:doc/text()"

        if item_namespace
          kinds = item_gir_kinds.map { |kind| "self::gir:#{kind}" }.join(" or ")
          xpath = "//gir:*[#{kinds}][@name='#{item_namespace.name}']#{xpath}"
        end

        doc = gir.xpath_node(xpath, namespaces).try &.content
        item.doc = parse_docstring(doc) if doc
      end
    end
  end

  def compute_repository
  end

  def read_readme
    "# Documentation for #{@gir_namespaces.join(", ")} and dependencies"
  end

  def relative_location(location : Crystal::Location?)
    location
  end

  def relative_filename(location)
    filename = location.filename
    return unless filename.is_a?(String)
    filename
  end

  def relative_locations(type)
    # Keep them absolute

    locations = [] of Crystal::Doc::RelativeLocation
    type.locations.try &.each do |location|
      location = relative_location location
      next unless location

      filename = relative_filename location
      next unless filename

      locations << Crystal::Doc::RelativeLocation.new(filename, location.line_number)
    end

    locations
  end
end

opt_namespaces = nil
output_directory = "docs/gobject"
gir_search_paths = nil

OptionParser.parse do |p|
  p.banner = "Usage: gi-doc [opts] NAMESPACE ..."
  p.on("-o DIR", "--output=DIR", "Output directory (defaults to docs/gobject") { |dir| output_directory = dir }
  p.on("-g DIR:DIR:...", "--girs=DIR:DIR:...", "Colon separated list of directories to search .gir files in (defaults to /usr/share/gir-1.0/)") do |paths|
    gir_search_paths = paths.split(":")
  end
  p.on("-h", "--help", "Show this help") do
    puts p
    exit
  end
  p.unknown_args do |args|
    opt_namespaces = args
  end
end

namespaces = opt_namespaces
namespaces = nil if namespaces && namespaces.empty?

unless namespaces
  STDERR.puts "Please give one or more GIR namespaces!"
  exit 1
end

namespaces = namespaces.map { |namespace| Namespace.new(namespace) }
compiler = Crystal::Compiler.new
sources = [Crystal::Compiler::Source.new("require", %(require "gobject"))]
sources.concat namespaces.map { |namespace|
  Crystal::Compiler::Source.new(namespace.name, %(require_gobject "#{namespace.name}"))
}
included_dirs = namespaces.map { |namespace| File.dirname(namespace.typelib_path) }
included_dirs << Crystal::CrystalPath.gobject_path
compiler.flags << "docs"
compiler.wants_doc = true
result = compiler.top_level_semantic sources

generator = Generator.new(result.program, included_dirs, output_directory, "html", nil, "", "",
  Crystal::Doc::ProjectInfo.new(namespaces.map(&.name).join(", "), namespaces.map(&.girname).join("/")))
generator.gir_namespaces = namespaces.map(&.name)
if paths = gir_search_paths
  generator.gir_search_paths = paths
end
generator.run
puts "Docs written to #{output_directory}"
