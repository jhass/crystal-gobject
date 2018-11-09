require "../../src/gtk/autorun"

class CSSApp
  @window : Gtk::Window

  delegate show_all, to: @window

  def initialize
    builder = Gtk::Builder.new_from_file "#{__DIR__}/learn_css.glade"
    builder.connect_signals

    @window = Gtk::Window.cast builder["css_window"]
    @window.connect "delete-event", &->Gtk.main_quit
 
    buffer = Gtk::TextBuffer.new nil
    buffer.set_text File.read("#{__DIR__}/learn_css.css"),File.read("#{__DIR__}/learn_css.css").bytesize
    @css_text = Gtk::TextView.cast builder["css_text"]
    @css_text.buffer= buffer 
    apply_btn = Gtk::Button.cast builder["apply_btn"]
    apply_btn.connect("clicked") { apply() }

    display = Gdk::Display.default.not_nil!
    screen = display.default_screen
    @css_provider = Gtk::CssProvider.new
    Gtk::StyleContext.add_provider_for_screen screen, @css_provider, Gtk::STYLE_PROVIDER_PRIORITY_APPLICATION

    @css_provider.load_from_path "#{__DIR__}/learn_css.css"
  end
  
  def apply()
    @css_provider.load_from_data @css_text.buffer.text
  end
  
end

app = CSSApp.new
app.show_all

