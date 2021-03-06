require "gobject/gtk"

class MyWindow < Gtk::ApplicationWindow
  def self.new(app : Gtk::Application)
    super
  end

  def initialize(ptr)
    super(ptr)

    self.border_width = 10
    self.title = "Hello"
    add Gtk::Label.new("Hello")
  end
end

class MyApp < Gtk::Application
  def initialize(**kwargs)
    super

    on_activate do |application|
      window = MyWindow.new(self)
      window.connect "destroy", &->quit
      window.show_all
    end
  end
end

app = MyApp.new(application_id: "org.crystal.mysample")
app.run
