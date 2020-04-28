module Gdk
  class Event
    def self.on_event(&block : Event ->)
      func = EventFunc.new { |event, box| Box(Event ->).unbox(box).call(Event.new(event)) }
      handler_set func, Box.box(block), ->(data : Void*) {}
    end
  end
end
