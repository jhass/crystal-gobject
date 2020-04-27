require "gobject/gtk/autorun"

window = Gtk::Window.new(title: "Enter something!", border_width: 10)
window.connect "destroy", &->Gtk.main_quit
entry = Gtk::Entry.new
entry.on_activate do |entry|
  puts entry.text
end
window.add entry
window.show_all
