require "../src/gobject"
require_gobject "Gio"
require_gobject "Gtk"
require "../src/gtk"

application = Gtk::Application.new("org.crystal.sample", :flags_none)

application.on_activate do
  window = Gtk::ApplicationWindow.new(application)
  window.border_width = 10
  window.title = "Hello"
  window.connect "destroy", &->application.quit
  window.add Gtk::Label.new("Hello")
  window.show_all
end

application.run
