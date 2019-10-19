require "gobject/gdk"

Gdk.init

window = Gdk::Window.new(nil,
  Gdk::WindowAttr.new(
    title: "Hello World",
    window_type: Gdk::WindowType::TOPLEVEL,
    wclass: Gdk::WindowWindowClass::INPUT_OUTPUT,
    width: 800,
    height: 600
    ),
  Gdk::WindowAttributesType.flags(TITLE)
)

window.events = Gdk::EventMask::ZERO_NONE

window.show

Gdk::Event.on_event do |event|
  case event.event_type
  when .expose?
    puts "Expose count: #{event.expose.count}"
  when .setting?
    puts "Setting #{event.setting.name} is #{event.setting.action}"
  else
    puts "Unhandled event: #{event.event_type}"
  end
end

GLib::MainLoop.new(nil, true).run
