require "../../src/gtk/autorun"

class CSSApp
  @window : Gtk::Window

  delegate show_all, to: @window

  def initialize
    builder = Gtk::Builder.new_from_file "#{__DIR__}/css_window.glade"
    builder.connect_signals

    @window = Gtk::Window.cast builder["css_window"]
    @window.title = "CSS Example"
    @window.connect "delete-event", &->Gtk.main_quit

    red_button = Gtk::Button.cast builder["red_button"]
    red_button.connect("clicked") { change_background("#FF7083") }
    green_button = Gtk::Button.cast builder["green_button"]
    green_button.connect("clicked") { change_background("#83FF70") }
    blue_button = Gtk::Button.cast builder["blue_button"]
    blue_button.connect("clicked") { change_background("#7083FF") }

    display = Gdk::Display.default.not_nil!
    screen = display.default_screen
    @css_provider = Gtk::CssProvider.new
    Gtk::StyleContext.add_provider_for_screen screen, @css_provider, Gtk::STYLE_PROVIDER_PRIORITY_APPLICATION

    @css_provider.load_from_path "#{__DIR__}/css_window.css"
  end

  def change_background(color)
    @css_provider.load_from_data "#css_window { background-color: #{color}; }"
  end
end

app = CSSApp.new
app.show_all
