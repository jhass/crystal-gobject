require "../../src/gdk"
require "../../src/cairo"
class CairoApp
  
  @window : Gdk::Window
  @main_loop : GLib::MainLoop
 
  def initialize
    Gdk.init

    @window = Gdk::Window.new(nil,
      Gdk::WindowAttr.new(
      title: "Simple Cairo Example",
      window_type: Gdk::WindowType::TOPLEVEL,
      wclass: Gdk::WindowWindowClass::INPUT_OUTPUT,
      width: 800,
      height: 600
      ),
      Gdk::WindowAttributesType.flags(TITLE)
      )
    
    @window.events = Gdk::EventMask::ZERO_NONE

    @main_loop=GLib::MainLoop.new(nil, true)
  end 
  
  def draw(context)
    context.set_source_rgb( 100, 100, 0) 
    context.select_font_face("Sans", Cairo::FontSlant::NORMAL , Cairo::FontWeight::NORMAL)
    context.set_font_size(40) 
    context.move_to(10,50)
    context.show_text("Cairo works!!!")
  end 

  def run()
    @window.show
    Gdk::Event.on_event do |event|
      case event.event_type
        when Gdk::EventType::VISIBILITY_NOTIFY
          draw((Gdk.cairo_create(@window)))
        when Gdk::EventType::DELETE
          @main_loop.quit
      end
    end
    @main_loop.run
  end
end

app=CairoApp.new
app.run

 









