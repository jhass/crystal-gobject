require "../src/gtk"

application = Gtk::Application.new("org.crystal.sample", Gio::ApplicationFlags::FLAGS_NONE)

application.on_activate do
  window = Gtk::ApplicationWindow.new(application)
  window.border_width = 10
  window.title = "Hello"
  window.connect "destroy", &->application.quit
  window.add Gtk::Label.new("Hello")
  window.show_all
end

application.run(ARGC_UNSAFE, ARGV_UNSAFE)