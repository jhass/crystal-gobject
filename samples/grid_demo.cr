
# Gtk::Grid is a container which arranges its child widgets in rows and columns,
# but you do not need to specify the dimensions in the constructor. 
# Children are added using Gtk::Grid.attach(). They can span multiple rows or columns.
# The Gtk::Grid.attach() method takes five parameters:
#    1. The child parameter is the Gtk::Widget to add.
#    2. left is the column number to attach the left side of child to.
#    3. top indicates the row number to attach the top side of child to.
#    4. width and height indicate the number of columns that the child will span, 
#       and the number of rows that the child will span, respectively.
# It is also possible to add a child next to an existing child, using Gtk::Grid.attach_next_to(),
# which also takes five parameters:
#    1. child is the Gtk.Widget to add, as above.
#    2. sibling is an existing child widget of self (a Gtk.Grid instance) or None. The child widget will be
#       placed next to sibling, or if sibling is None, at the beginning or end of the grid.
#    3. side is a Gtk.PositionType indicating the side of sibling that child is positioned next to.
#    4. width and height indicate the number of columns and rows the child widget will span, respectively.
# Finally, Gtk::Grid can be used like a Gtk::Box by just using Gtk::Grid.add(), which will place children
# next to each other in the direction determined by the “orientation” property

require "gobject/gtk/autorun"

window = Gtk::Window.new
window.title = "Grid demo!"
window.connect "destroy", &->Gtk.main_quit
window.border_width = 10

grid = Gtk::Grid.new
btn1 = Gtk::Button.new_with_label "Button1"
btn2 = Gtk::Button.new_with_label "Button2"
btn3 = Gtk::Button.new_with_label "Button3"
btn4 = Gtk::Button.new_with_label "Button4"
btn5 = Gtk::Button.new_with_label "Button5"
btn6 = Gtk::Button.new_with_label "Button6"

grid.add btn1
grid.attach btn2,1,0,2,1
grid.attach_next_to(btn3, btn1, Gtk::PositionType::BOTTOM, 1, 2)
grid.attach_next_to(btn4, btn3, Gtk::PositionType::RIGHT, 2, 1)
grid.attach(btn5, 1, 2, 1, 1)
grid.attach_next_to(btn6, btn5, Gtk::PositionType::RIGHT, 1, 1)

window.add grid

window.show_all

