# A ButtonBox should be used to provide a consistent layout of buttons throughout your application.
# The layout/spacing can be altered by the programmer, or if desired, 
# by the user to alter the "feel" of a program to a small degree.

require "gobject/gtk/autorun"

window = Gtk::Window.new
window.title = "ButtonBox demo!"
window.connect "destroy", &->Gtk.main_quit
window.border_width = 10

vb = Gtk::Box.new Gtk::Orientation::VERTICAL, padding = 2
box1 = Gtk::ButtonBox.new Gtk::Orientation::VERTICAL
btn1 = Gtk::Button.new_with_label "Button1"
btn2 = Gtk::Button.new_with_label "Button2"
box1.pack_start(btn1, expand = true, fill = true, padding = 10)
box1.pack_start(btn2, expand = true, fill = true, padding = 10)
box1.border_width=5
vb.add box1

box2 = Gtk::ButtonBox.new Gtk::Orientation::HORIZONTAL
btn3 = Gtk::Button.new_with_label "Button3"
btn4 = Gtk::Button.new_with_label "Button4"
box2.pack_start(btn3, expand = true, fill = true, padding = 10)
box2.pack_start(btn4, expand = true, fill = true, padding = 10)
box2.border_width=5
vb.add box2
  
window.add vb

window.show_all


