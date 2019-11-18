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

name_container = Gtk::Box.new :vertical, spacing: 2

name_label = Gtk::Label.new "Enter name"
name_container.pack_start(name_label, expand: true, fill: true, padding: 10)

name_entry = Gtk::Entry.new
name_container.pack_start(name_entry, expand: true, fill: true, padding: 10)

name_submit = Gtk::Button.new_with_label "OK!"
name_submit.on_clicked { puts "Remembering you're called: #{name_entry.text}" }
name_container.pack_start(name_submit, expand: true, fill: true, padding: 10)

remarks_container = Gtk::Box.new :horizontal, 2

remarks_label = Gtk::Label.new "Enter remarks"
remarks_container.pack_start(remarks_label, expand: true, fill: true, padding: 5)

remarks_entry = Gtk::Entry.new
remarks_container.pack_start(remarks_entry, expand: true, fill: true, padding: 5)

remarks_submit = Gtk::Button.new_with_label "Save"
remarks_submit.on_clicked { puts "Stored remarks: #{remarks_entry.text}" }
remarks_container.pack_start(remarks_submit, expand: true, fill: true, padding: 5)

root = Gtk::Box.new :vertical, spacing: 2
root.add name_container
root.add remarks_container
window.add root

window.show_all
