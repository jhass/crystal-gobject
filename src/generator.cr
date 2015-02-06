require "./helper"
require "./error"
require "./info/*"
require "./namespace"

# namespace = ARGV[0]
# namespace = "GIRepository"
# namespace = "GLib"
# namespace = "Gio"
# namespace = "GObject"
# namespace = "Gtk"
# namespace = "xlib"

%w(Atk cairo GIRepository GLib GModule GObject Gdk GdkPixbuf Gio Gtk Pango).each do |namespace|

Repository.instance.require namespace

# puts Repository.instance.version namespace
# puts Repository.instance.typelib_path namespace
# puts Repository.instance.c_prefix(namespace)
# puts Repository.instance.loaded_namespaces

# puts Namespace.new(namespace).definition

print "Generate #{namespace}... "
Namespace.new(namespace).write "src/"
puts "done."

end

# Repository.instance.loaded_namespaces.each do |name|
  # print "Generate #{name}... "
  # Namespace.new(name).write "src/"
  # puts "done."
# end
