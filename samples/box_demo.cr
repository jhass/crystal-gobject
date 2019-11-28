# Boxes are invisible containers into which we can pack our widgets.
# When packing widgets into a horizontal box, the
# objects are inserted horizontally from left to right or right to left 
# depending on whether Gtk::Box.pack_start() or Gtk::Box.pack_end() is used.
# In a vertical box, widgets are packed from top to bottom or vice versa.
# You may use any combination of boxes inside or beside other boxes to create the desired effect.

require "gobject/gtk/autorun"

window = Gtk::Window.new
window.title = "Box demo!"
window.connect "destroy", &->Gtk.main_quit
window.border_width = 10

box = Gtk::Box.new Gtk::Orientation::VERTICAL, spacing = 2
vb = Gtk::Box.new Gtk::Orientation::VERTICAL, spacing = 2

lbl = Gtk::Label.new "Enter name"
vb.pack_start(lbl, expand = true, fill = true, padding = 10)

text = Gtk::Entry.new
vb.pack_start(text, expand = true, fill = true, padding = 10)

btn = Gtk::Button.new_with_label "OK!"
vb.pack_start(btn, expand = true, fill = true, padding = 10)

hb = Gtk::Box.new Gtk::Orientation::HORIZONTAL,2
lbl1 = Gtk::Label.new "Enter marks"
hb.pack_start(lbl1, expand = true, fill = true, padding = 5)
      
text1 = Gtk::Entry.new
hb.pack_start(text1, expand = true, fill = true, padding = 5)

btn1 = Gtk::Button.new_with_label "Cancel!"
hb.pack_start(btn1, expand = true, fill = true, padding = 5)

box.add vb
box.add hb     
window.add box

window.show_all
