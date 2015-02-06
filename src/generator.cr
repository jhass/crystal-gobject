require "./helper"
require "./error"
require "./info/*"
require "./namespace"

namespace = ARGV[0]
# namespace = "GIRepository"
# namespace = "GLib"
# namespace = "Gio"
# namespace = "GObject"
# namespace = "Gtk"
# namespace = "xlib"

Repository.instance.require namespace

# puts Repository.instance.version namespace
# puts Repository.instance.typelib_path namespace
# puts Repository.instance.c_prefix(namespace)
# puts Repository.instance.loaded_namespaces

# puts Namespace.new(namespace).definition

Namespace.new(namespace).write "src/"

# Repository.instance.loaded_namespaces.each do |name|
  # print "Generate #{name}... "
  # Namespace.new(name).write "src/"
  # puts "done."
# end
