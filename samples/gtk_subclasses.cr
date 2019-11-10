require "../src/gobject"
require_gobject "Gio"
require_gobject "Gtk"
require "../src/gtk"

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
  def self.new(id, flags : Gio::ApplicationFlags)
    super
  end

  def initialize(ptr)
    super(ptr)

    on_activate do |application|
      window = MyWindow.new(self)
      window.connect "destroy", &->quit
      window.show_all
    end
  end
end

app = MyApp.new("org.crystal.mysample", :flags_none)
app.run
