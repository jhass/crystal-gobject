require "../src/gtk"

class MyWindow < Gtk::ApplicationWindow
  def instantiate
    self.border_width = 10
    self.title = "Hello"
    add Gtk::Label.new("Hello")
  end
end

class MyApp < Gtk::Application
  def instantiate
    on_activate do |application|
      window = MyWindow.new(self)
      window.connect "destroy", &->quit
      window.show_all
    end
  end
end

app = MyApp.new("org.crystal.mysample", :flags_none)
app.run
