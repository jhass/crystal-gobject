require "gobject/gtk/autorun"

window = Gtk::Window.new title: "Lists", border_width: 10
window.connect "destroy", &->Gtk.main_quit

container = Gtk::Box.new :vertical, spacing: 2

radio1 = Gtk::RadioButton.new_with_label(nil, "Good?")
radio2 = Gtk::RadioButton.new_with_label_from_widget(radio1, "Awesome?")
container.add radio1
container.add radio2
pp! container.children.to_a
pp! radio1.group.to_a

window.add container
window.show_all
