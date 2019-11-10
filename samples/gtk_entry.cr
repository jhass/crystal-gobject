require "../src/gobject"
require_gobject "Gio"
require_gobject "Gtk"
require "../src/gtk/autorun"

window = Gtk::Window.new
window.title = "Enter something!"
window.connect "destroy", &->Gtk.main_quit
window.border_width = 10
entry = Gtk::Entry.new
entry.on_activate do |entry|
  puts entry.text
end
window.add entry
window.show_all
