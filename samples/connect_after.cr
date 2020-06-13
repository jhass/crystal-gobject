require "gobject/gtk/autorun"

def on(widget, event)
  puts "on"
  false
end

def after(widget, event)
  puts "after"
  true
end

window = Gtk::Window.new(title: "Enter something!", border_width: 10)
window.connect "destroy", after: true, &->Gtk.main_quit
box = Gtk::Box.new(orientation: :vertical, spacing: 6)
window.add(box)

entry1 = Gtk::Entry.new
entry1.after_focus_out_event(&->after(Gtk::Widget, Gdk::EventFocus))
entry1.on_focus_out_event(&->on(Gtk::Widget, Gdk::EventFocus))

entry2 = Gtk::Entry.new
entry2.after_focus_out_event {
  puts "after"
  true
}
entry2.on_focus_out_event {
  puts "on"
  false
}

box.add(entry1)
box.add(entry2)

window.show_all
