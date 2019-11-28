#   A Gtk::Stack is a container which only shows one of its children at a time.
# In contrast to Gtk::Notebook, Gtk::Stack does not provide a means for users to change the visible child.
# Instead, the Gtk::StackSwitcher widget can be used with Gtk::Stack to provide this functionality.
# Transitions between pages can be animated as slides or fades.
# This can be controlled with Gtk::Stack.transition_type=().
# These animations respect the “gtk-enable-animations” setting.
# Transition speed can be adjusted with Gtk.Stack.transition_duration=()
# The Gtk::StackSwitcher widget acts as a controller for a Gtk::Stack; it shows a row of buttons to switch
# between the various pages of the associated stack widget.
# All the content for the buttons comes from the child properties of the Gtk::Stack.
# It is possible to associate multiple Gtk::StackSwitcher widgets with the same Gtk::Stack widget.

require "gobject/gtk/autorun"

window = Gtk::Window.new
window.title = "Stack demo!"
window.connect "destroy", &->Gtk.main_quit
window.border_width = 10

vbox = Gtk::Box.new(orientation=Gtk::Orientation::VERTICAL, spacing=6)
window.add(vbox)

stack = Gtk::Stack.new
stack.transition_type= Gtk::StackTransitionType::SLIDE_LEFT_RIGHT
stack.transition_duration= 1000

checkbutton = Gtk::CheckButton.new_with_label("Click me!")
stack.add_titled(child = checkbutton, name = "check", title = "Check Button")

label = Gtk::Label.new("")
label.markup= "<big>A fancy label</big>"
stack.add_titled(child = label, name = "label", title = "A label")

stack_switcher = Gtk::StackSwitcher.new
stack_switcher.stack= stack
vbox.pack_start(stack_switcher, true, true, 0)
vbox.pack_start(stack, true, true, 0)

window.show_all
