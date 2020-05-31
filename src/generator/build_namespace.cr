require "../crout"
require "../g_i_repository"
require "./namespace"

name = ARGV[0]
version = ARGV[1]?
namespace = Namespace.new(name, version)

Crout.build(STDOUT) do |builder|
  section do
    namespace.dependencies.each do |dependency, version|
      if version
        line call("require_gobject", literal(dependency), literal(version))
      else
        line call("require_gobject", literal(dependency))
      end
    end
  end

  namespace.lib_definition(builder)
  namespace.wrapper_definitions(builder)
end
