require "../src/gobject"
require_gobject "Gio"
require_gobject "Gtk"
require "../src/gio"
require "../src/gtk"

class MyApplication < Gtk::Application
  def self.new
    super "org.example.application", :flags_none
  end

  def initialize(ptr)
    super(ptr)

    on_activate do
      build_ui

      setup_actions
    end
  end

  def setup_actions
    quit_action = Gio::SimpleAction.new("quit", nil)
    quit_action.on_activate { self.quit }

    add_action(quit_action)
  end

  def build_ui
    menu_template = "
      <interface>
        <menu id='app_menu'>
          <submenu>
            <attribute name='label'>_File</attribute>

            <item>
              <attribute name='label'>_Quit</attribute>
              <attribute name='action'>app.quit</attribute>
              <attribute name='accel'>&lt;Primary&gt;q</attribute>
            </item>

          </submenu>
        </menu>
      </interface>
    "
    menu_builder = Gtk::Builder.new_from_string menu_template, menu_template.size

    menu_model = menu_builder["app_menu"]

    self.menubar = menu_model

    window = Gtk::ApplicationWindow.new self
    window.title = "Hello World"
    window.set_default_size 600, 400
    window.icon_name = "applications-development"

    window.show_all
  end
end

app = MyApplication.new
app.run
