module Gtk
  class TextTag < GObject::Object
    def initialize(@gtk_text_tag)
    end

    def to_unsafe
      @gtk_text_tag.not_nil!
    end











































































    def self.new_internal(name)
      __return_value = LibGtk.text_tag_new(name && name)
      Gtk::TextTag.new(__return_value)
    end

    def event(event_object, event, iter)
      __return_value = LibGtk.text_tag_event((to_unsafe as LibGtk::TextTag*), (event_object.to_unsafe as LibGObject::Object*), (event.to_unsafe as LibGdk::Event*), (iter.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def priority
      __return_value = LibGtk.text_tag_get_priority((to_unsafe as LibGtk::TextTag*))
      __return_value
    end

    def priority=(priority)
      __return_value = LibGtk.text_tag_set_priority((to_unsafe as LibGtk::TextTag*), Int32.new(priority))
      __return_value
    end

    alias EventSignal = TextTag, GObject::Object, Gdk::Event, Gtk::TextIter -> Bool
    def on_event(&__block : EventSignal)
      __callback = ->(_arg0 : LibGtk::TextTag*, _arg1 : LibGtk::LibGObject::Object*, _arg2 : LibGtk::LibGdk::Event*, _arg3 : LibGtk::LibGtk::TextIter*) {
       __return_value = __block.call(TextTag.new(_arg0), GObject::Object.new(_arg1), _arg2, Gtk::TextIter.new(_arg3))
       __return_value
      }
      connect("event", __callback)
    end

  end
end

