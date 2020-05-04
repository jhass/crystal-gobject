require "gobject/gtk/autorun"

window = Gtk::ApplicationWindow.new(title: "AccelGroup", border_width: 20)
window.connect "destroy", ->Gtk.main_quit
window.add Gtk::Label.new("Press Ctrl+S")

accel_group = Gtk::AccelGroup.new
accel_group.connect(Gdk::KEY_S, :control_mask, :zero_none) do
  puts "Ctrl+S pressed!"
end
window.add_accel_group(accel_group)

window.show_all
