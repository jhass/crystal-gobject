require "./helper"
require "./error"
require "./info/*"
require "./namespace"

namespace = "GIRepository"
# namespace = "GLib"
# namespace = "Gio"
# namespace = "GObject"

# Repository.instance.version namespace
# Repository.instance.typelib_path namespace

Repository.instance.require namespace
Repository.instance.loaded_namespaces.each do |name|
  print "Generate #{name}... "
  Namespace.new(name).write "src/"
  puts "done."
end

# puts Namespace.new(namespace).definition
# puts Repository.instance.c_prefix(namespace)

