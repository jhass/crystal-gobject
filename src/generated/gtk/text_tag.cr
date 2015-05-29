module Gtk
  class TextTag < GObject::Object
    def initialize @gtk_text_tag
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
      __return_value = LibGtk.text_tag_set_priority((to_unsafe as LibGtk::TextTag*), Int32.cast(priority))
      __return_value
    end

  end
end

