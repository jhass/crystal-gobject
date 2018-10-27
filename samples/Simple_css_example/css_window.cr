require "../../src/gtk"
class CssWindow < Gtk::Window
 def self.new
   builder = Gtk::Builder.new_from_file "#{__DIR__}/css_window.glade"
   builder.connect_signals
   window=Gtk::Window.cast builder["CssWindow"]
   window.name="CssWindow"
   redBtn=Gtk::Button.cast(builder["redBtn"])
   redBtn.connect "clicked",&->self.redBtn_click
   greenBtn=Gtk::Button.cast(builder["greenBtn"])
   greenBtn.connect "clicked",&->self.greenBtn_click
   blueBtn=Gtk::Button.cast(builder["blueBtn"])
   blueBtn.connect "clicked",&->self.blueBtn_click
   display=Gdk::Display.new(LibGdk.display_get_default)
   screen=display.default_screen
   provider=Gtk::CssProvider.new
   Gtk::StyleContext.add_provider_for_screen screen,provider, LibGtk::STYLE_PROVIDER_PRIORITY_APPLICATION 
   provider.load_from_path "css_window.css"
   window
   end
 def self.redBtn_click
   display=Gdk::Display.new(LibGdk.display_get_default)
   screen=display.default_screen
   provider=Gtk::CssProvider.new
   Gtk::StyleContext.add_provider_for_screen screen,provider, LibGtk::STYLE_PROVIDER_PRIORITY_APPLICATION 
   data="\#CssWindow {background-color:rgba(255,0,0,1);}"
   provider.load_from_data data.bytes,data.bytesize
 end
 def self.greenBtn_click
   display=Gdk::Display.new(LibGdk.display_get_default)
   screen=display.default_screen
   provider=Gtk::CssProvider.new
   Gtk::StyleContext.add_provider_for_screen screen,provider, LibGtk::STYLE_PROVIDER_PRIORITY_APPLICATION 
   data="\#CssWindow {background-color:rgba(0,255,0,1);}"
   provider.load_from_data data.bytes,data.bytesize
 end
 def self.blueBtn_click
   display=Gdk::Display.new(LibGdk.display_get_default)
   screen=display.default_screen
   provider=Gtk::CssProvider.new
   Gtk::StyleContext.add_provider_for_screen screen,provider, LibGtk::STYLE_PROVIDER_PRIORITY_APPLICATION 
   data="\#CssWindow {background-color:rgba(0,0,255,1);}"
   provider.load_from_data data.bytes,data.bytesize
 end
end
Gtk.init(nil,nil)
win = CssWindow.new	
win.title = "Simple Css Example"
win.resize 400,200
win.connect "delete-event", &->Gtk.main_quit
win.show_all
Gtk.main
