require "gobject/gtk/autorun"

def changed(widget : Gtk::Editable)
  puts Gtk::Entry.cast(widget).text
end

window = Gtk::Window.new(title: "Enter something!", border_width: 10)
window.connect "destroy", &->Gtk.main_quit
entry = Gtk::Entry.new

entry.on_changed(&->changed(Gtk::Editable))

window.add entry
window.show_all
