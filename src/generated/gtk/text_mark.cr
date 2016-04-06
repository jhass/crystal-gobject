module Gtk
  class TextMark < GObject::Object
    def initialize(@gtk_text_mark)
    end

    def to_unsafe
      @gtk_text_mark.not_nil!
    end



    def self.new_internal(name, left_gravity)
      __return_value = LibGtk.text_mark_new(name && name, left_gravity)
      Gtk::TextMark.new(__return_value)
    end

    def buffer
      __return_value = LibGtk.text_mark_get_buffer((to_unsafe as LibGtk::TextMark*))
      Gtk::TextBuffer.new(__return_value)
    end

    def deleted
      __return_value = LibGtk.text_mark_get_deleted((to_unsafe as LibGtk::TextMark*))
      __return_value
    end

    def left_gravity
      __return_value = LibGtk.text_mark_get_left_gravity((to_unsafe as LibGtk::TextMark*))
      __return_value
    end

    def name
      __return_value = LibGtk.text_mark_get_name((to_unsafe as LibGtk::TextMark*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def visible
      __return_value = LibGtk.text_mark_get_visible((to_unsafe as LibGtk::TextMark*))
      __return_value
    end

    def visible=(setting)
      __return_value = LibGtk.text_mark_set_visible((to_unsafe as LibGtk::TextMark*), setting)
      __return_value
    end

  end
end

