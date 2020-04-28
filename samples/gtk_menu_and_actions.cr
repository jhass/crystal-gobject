require "gobject/gtk"
require "gobject/gio"

class MyApplication < Gtk::Application
  def initialize
    super application_id: "org.example.application"

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

    menu_model = Gio::MenuModel.cast menu_builder["app_menu"]

    self.menubar = menu_model

    window = Gtk::ApplicationWindow.new application: self, title: "Hello World",
      default_width: 600, default_height: 400, icon_name: "applications-development"

    menu = Gtk::Menu.new
    menu.attach_to_widget(window, nil)
    quit_item = Gtk::MenuItem.new label: "Quit"
    quit_item.on_activate { self.quit }
    menu.append(quit_item)
    menu.show_all

    window.on_button_press_event do |_, event|
      if event.type.button_press? && event.button == Gdk::BUTTON_SECONDARY
        menu.popup_at_pointer(event)
        true
      else
        false
      end
    end

    window.show_all
  end
end

app = MyApplication.new
app.run
