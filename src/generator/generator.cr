require "file_utils"

require "./namespace"

# namespace = ARGV[0]
# namespace = "GIRepository"
# namespace = "GLib"
# namespace = "Gio"
# namespace = "GObject"
# namespace = "Gtk"
# namespace = "xlib"

%w(Atk cairo GIRepository GLib GModule GObject Gdk GdkPixbuf Gio Gtk Pango Notify Gst).each do |namespace|

GIRepository::Repository.instance.require namespace

# puts Repository.instance.version namespace
# puts Repository.instance.typelib_path namespace
# puts Repository.instance.c_prefix(namespace)
# puts Repository.instance.loaded_namespaces

# puts Namespace.new(namespace).lib_definition

print "Generate #{namespace}... "
Namespace.new(namespace).write "src/generated-next"
puts "done."

end

FileUtils.rm_r "src/generated"
File.rename "src/generated-next", "src/generated"

# Repository.instance.loaded_namespaces.each do |name|
  # print "Generate #{name}... "
  # Namespace.new(name).write "src/"
  # puts "done."
# end
