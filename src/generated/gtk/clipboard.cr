module Gtk
  class Clipboard < GObject::Object
    def initialize @gtk_clipboard
    end

    def to_unsafe
      @gtk_clipboard.not_nil!
    end

    def self.get(selection)
      __return_value = LibGtk.clipboard_get((selection.to_unsafe as LibGdk::Atom*))
      Gtk::Clipboard.new(__return_value)
    end

    def self.for_display(display, selection)
      __return_value = LibGtk.clipboard_get_for_display((display.to_unsafe as LibGdk::Display*), (selection.to_unsafe as LibGdk::Atom*))
      Gtk::Clipboard.new(__return_value)
    end

    def clear
      __return_value = LibGtk.clipboard_clear((to_unsafe as LibGtk::Clipboard*))
      __return_value
    end

    def display
      __return_value = LibGtk.clipboard_get_display((to_unsafe as LibGtk::Clipboard*))
      Gdk::Display.new(__return_value)
    end

    def owner
      __return_value = LibGtk.clipboard_get_owner((to_unsafe as LibGtk::Clipboard*))
      GObject::Object.new(__return_value)
    end

    def request_contents(target, callback, user_data)
      __return_value = LibGtk.clipboard_request_contents((to_unsafe as LibGtk::Clipboard*), (target.to_unsafe as LibGdk::Atom*), callback, user_data)
      __return_value
    end

    def request_image(callback, user_data)
      __return_value = LibGtk.clipboard_request_image((to_unsafe as LibGtk::Clipboard*), callback, user_data)
      __return_value
    end

    def request_rich_text(buffer, callback, user_data)
      __return_value = LibGtk.clipboard_request_rich_text((to_unsafe as LibGtk::Clipboard*), (buffer.to_unsafe as LibGtk::TextBuffer*), callback, user_data)
      __return_value
    end

    def request_targets(callback, user_data)
      __return_value = LibGtk.clipboard_request_targets((to_unsafe as LibGtk::Clipboard*), callback, user_data)
      __return_value
    end

    def request_text(callback, user_data)
      __return_value = LibGtk.clipboard_request_text((to_unsafe as LibGtk::Clipboard*), callback, user_data)
      __return_value
    end

    def request_uris(callback, user_data)
      __return_value = LibGtk.clipboard_request_uris((to_unsafe as LibGtk::Clipboard*), callback, user_data)
      __return_value
    end

    def can_store=(targets, n_targets)
      __return_value = LibGtk.clipboard_set_can_store((to_unsafe as LibGtk::Clipboard*), targets, Int32.cast(n_targets))
      __return_value
    end

    def image=(pixbuf)
      __return_value = LibGtk.clipboard_set_image((to_unsafe as LibGtk::Clipboard*), (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def text=(text, len)
      __return_value = LibGtk.clipboard_set_text((to_unsafe as LibGtk::Clipboard*), text, Int32.cast(len))
      __return_value
    end

    def store
      __return_value = LibGtk.clipboard_store((to_unsafe as LibGtk::Clipboard*))
      __return_value
    end

    def wait_for_contents(target)
      __return_value = LibGtk.clipboard_wait_for_contents((to_unsafe as LibGtk::Clipboard*), (target.to_unsafe as LibGdk::Atom*))
      Gtk::SelectionData.new(__return_value) if __return_value
    end

    def wait_for_image
      __return_value = LibGtk.clipboard_wait_for_image((to_unsafe as LibGtk::Clipboard*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def wait_for_rich_text(buffer, format, length)
      __return_value = LibGtk.clipboard_wait_for_rich_text((to_unsafe as LibGtk::Clipboard*), (buffer.to_unsafe as LibGtk::TextBuffer*), (format.to_unsafe as LibGdk::Atom*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_23| __item_23 } if __return_value
    end

    def wait_for_targets(targets, n_targets)
      __return_value = LibGtk.clipboard_wait_for_targets((to_unsafe as LibGtk::Clipboard*), targets, Int32.cast(n_targets))
      __return_value
    end

    def wait_for_text
      __return_value = LibGtk.clipboard_wait_for_text((to_unsafe as LibGtk::Clipboard*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def wait_for_uris
      __return_value = LibGtk.clipboard_wait_for_uris((to_unsafe as LibGtk::Clipboard*))
      PointerIterator.new(__return_value) {|__item_40| raise "Expected string but got null" unless __item_40; String.new(__item_40) } if __return_value
    end

    def wait_is_image_available
      __return_value = LibGtk.clipboard_wait_is_image_available((to_unsafe as LibGtk::Clipboard*))
      __return_value
    end

    def wait_is_rich_text_available(buffer)
      __return_value = LibGtk.clipboard_wait_is_rich_text_available((to_unsafe as LibGtk::Clipboard*), (buffer.to_unsafe as LibGtk::TextBuffer*))
      __return_value
    end

    def wait_is_target_available(target)
      __return_value = LibGtk.clipboard_wait_is_target_available((to_unsafe as LibGtk::Clipboard*), (target.to_unsafe as LibGdk::Atom*))
      __return_value
    end

    def wait_is_text_available
      __return_value = LibGtk.clipboard_wait_is_text_available((to_unsafe as LibGtk::Clipboard*))
      __return_value
    end

    def wait_is_uris_available
      __return_value = LibGtk.clipboard_wait_is_uris_available((to_unsafe as LibGtk::Clipboard*))
      __return_value
    end

  end
end

