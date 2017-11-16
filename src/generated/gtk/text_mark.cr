module Gtk
  class TextMark < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::TextMark*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextMark*)
    end

    def left_gravity
      __return_value = LibGtk.text_mark_get_left_gravity(to_unsafe.as(LibGtk::TextMark*))
      __return_value
    end

    def name
      __return_value = LibGtk.text_mark_get_name(to_unsafe.as(LibGtk::TextMark*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(name, left_gravity) : self
      __return_value = LibGtk.text_mark_new(name ? name.to_unsafe : nil, left_gravity)
      cast Gtk::TextMark.new(__return_value)
    end

    def buffer
      __return_value = LibGtk.text_mark_get_buffer(@pointer.as(LibGtk::TextMark*))
      Gtk::TextBuffer.new(__return_value)
    end

    def deleted
      __return_value = LibGtk.text_mark_get_deleted(@pointer.as(LibGtk::TextMark*))
      __return_value
    end

    def left_gravity
      __return_value = LibGtk.text_mark_get_left_gravity(@pointer.as(LibGtk::TextMark*))
      __return_value
    end

    def name
      __return_value = LibGtk.text_mark_get_name(@pointer.as(LibGtk::TextMark*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def visible
      __return_value = LibGtk.text_mark_get_visible(@pointer.as(LibGtk::TextMark*))
      __return_value
    end

    def visible=(setting)
      LibGtk.text_mark_set_visible(@pointer.as(LibGtk::TextMark*), setting)
      nil
    end

  end
end

