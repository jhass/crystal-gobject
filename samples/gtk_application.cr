require "gobject/gtk"

application = Gtk::Application.new(application_id: "org.crystal.sample")

application.on_activate do
  window = Gtk::ApplicationWindow.new(application: application, title: "Hello", border_width: 20)
  window.connect "destroy", &->application.quit
  window.add Gtk::Label.new("Hello World!")
  window.show_all
end

application.run
