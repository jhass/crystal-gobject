#   Gtk::ListBox is a vertical container that contains Gtk::ListBoxRow children.
# These rows can by dynamically sorted and filtered,
# and headers can be added dynamically depending on the row content.
# It also allows keyboard and mouse navigation and selection like a typical list.
#   Using Gtk::ListBox is often an alternative to Gtk::TreeView,
# especially when the list content has a more complicated layout
# than what is allowed by a Gtk::CellRenderer,
# or when the content is interactive (i.e. has a button in it).
#   Although a Gtk::ListBox must have only Gtk::ListBoxRow children,
# you can add any kind of widget to it via Gtk::Container.add() and a Gtk::ListBoxRow widget
# will automatically be inserted between the list and the widget.

require "gobject/gtk/autorun"

window = Gtk::Window.new
window.title = "ListBox demo!"
window.connect "destroy", &->Gtk.main_quit
window.border_width = 10

box_outer = Gtk::Box.new Gtk::Orientation::VERTICAL, spacing = 6
window.add box_outer

listbox = Gtk::ListBox.new
listbox.selection_mode = Gtk::SelectionMode::NONE
box_outer.pack_start(listbox, true, true, 0)

row = Gtk::ListBoxRow.new
hbox = Gtk::Box.new orientation=Gtk::Orientation::HORIZONTAL, spacing = 50
row.add(hbox)
vbox = Gtk::Box.new orientation=Gtk::Orientation::VERTICAL, spacing = 1
hbox.pack_start(vbox, true, true, 0)
label1 = Gtk::Label.new("Automatic Date & Time")
label1.xalign = 0
label2 = Gtk::Label.new("Requires internet access")
label2.xalign = 0
vbox.pack_start(label1, true, true, 0)
vbox.pack_start(label2, true, true, 0)

switch = Gtk::Switch.new
hbox.pack_start(switch, false, true, 0)

listbox.add(row)

row2 = Gtk::ListBoxRow.new
hbox2 = Gtk::Box.new(orientation=Gtk::Orientation::HORIZONTAL, spacing=50)
row2.add(hbox2)
label = Gtk::Label.new("Enable Automatic Update")
label.xalign = 0
check = Gtk::CheckButton.new
hbox2.pack_start(label, true, true, 0)
hbox2.pack_start(check, false, true, 0)

listbox.add(row2)

row3 = Gtk::ListBoxRow.new
hbox3 = Gtk::Box.new(orientation=Gtk::Orientation::HORIZONTAL, spacing=50)
row3.add(hbox3)
label3 = Gtk::Label.new("Date Format")
label3.xalign = 0
combo = Gtk::ComboBoxText.new
combo.insert(position = 0, id = "0", text = "24-hour")
combo.insert(position = 1, id = "1", text = "AM/PM")
hbox3.pack_start(label3, true, true, 0)
hbox3.pack_start(combo, false, true, 0)
listbox.add(row3)

window.show_all
