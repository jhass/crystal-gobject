require "file_utils"
require "../crout"
require "./namespace"

generation_dir = "src/generated-next"
target_dir = "src/generated"

name = "GIRepository"
namespace = Namespace.new(name)
print "Generate #{name}... "
namespace.dependencies.each do |dependency, version|
  dependency_namespace = Namespace.new(dependency)
  dependency_namespace.write_lib generation_dir
  if dependency == "GObject"
    dependency_namespace.write_wrapper generation_dir, "ParamFlags"
    dependency_namespace.write_wrapper generation_dir, "SignalFlags"
  end
end
namespace.write generation_dir
puts "done."
FileUtils.rm_r target_dir
File.rename generation_dir, target_dir
