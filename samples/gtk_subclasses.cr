require "../src/gtk"

class MyWindow < Gtk::ApplicationWindow
  construct {
    self.border_width = 10
    self.title = "Hello"
    add Gtk::Label.new("Hello")
  }
end

class MyApp < Gtk::Application
  construct {
    on_activate do |application|
      window = MyWindow.new(self)
      window.connect "destroy", &->quit
      window.show_all
    end
  }
end

app = MyApp.new("org.crystal.mysample", :flags_none)
app.run
