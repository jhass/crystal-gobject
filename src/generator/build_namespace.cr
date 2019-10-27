require "../g_i_repository"
require "./namespace"

name = ARGV[0]
namespace = Namespace.new(name)

namespace.dependencies.each do |dependency, version|
  puts "require_gobject(\"#{dependency}\")"
end

namespace.lib_definition(STDOUT)
namespace.wrapper_definitions(STDOUT, namespace.typelib_path)