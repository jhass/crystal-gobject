require "../src/gobject"
require_gobject "Gio"
require_gobject "Gtk"
require "../src/gtk/autorun"

window = Gtk::Window.new
window.title = "Hello World!"
window.connect "destroy", &->Gtk.main_quit
window.border_width = 10
button = Gtk::Button.new_with_label "Hello World!"
button.on_clicked do |button|
  pp button
  puts "Hello World!"
end
button.connect "clicked", &->window.destroy
window.add button

window.show_all
