require "../g_i_repository"
require "./namespace"

name = ARGV[0]
version = ARGV[1]?
namespace = Namespace.new(name, version)

namespace.dependencies.each do |dependency, version|
  puts %(require_gobject("#{dependency}", #{version ? %("#{version}") : ""}))
end

namespace.lib_definition(STDOUT)
namespace.wrapper_definitions(STDOUT, namespace.typelib_path)
