require "gobject/gtk/autorun"

window = Gtk::Window.new(title: "Hello World!", border_width: 10)
window.connect "destroy", &->Gtk.main_quit
button = Gtk::Button.new label: "Hello World!"
button.on_clicked do |button|
  p! button
  puts "Hello World!"
end
button.connect "clicked", &->window.destroy
window.add button

window.show_all
