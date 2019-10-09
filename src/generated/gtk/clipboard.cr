module Gtk
  class Clipboard < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::Clipboard*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Clipboard*)
    end

    def self.get(selection)
      __return_value = LibGtk.clipboard_get(selection.to_unsafe.as(LibGdk::Atom*))
      Gtk::Clipboard.new(__return_value)
    end

    def self.default(display)
      __return_value = LibGtk.clipboard_get_default(display.to_unsafe.as(LibGdk::Display*))
      Gtk::Clipboard.new(__return_value)
    end

    def self.for_display(display, selection)
      __return_value = LibGtk.clipboard_get_for_display(display.to_unsafe.as(LibGdk::Display*), selection.to_unsafe.as(LibGdk::Atom*))
      Gtk::Clipboard.new(__return_value)
    end

    def clear
      LibGtk.clipboard_clear(@pointer.as(LibGtk::Clipboard*))
      nil
    end

    def display
      __return_value = LibGtk.clipboard_get_display(@pointer.as(LibGtk::Clipboard*))
      Gdk::Display.new(__return_value)
    end

    def owner
      __return_value = LibGtk.clipboard_get_owner(@pointer.as(LibGtk::Clipboard*))
      GObject::Object.new(__return_value)
    end

    def request_contents(target, callback, user_data)
      LibGtk.clipboard_request_contents(@pointer.as(LibGtk::Clipboard*), target.to_unsafe.as(LibGdk::Atom*), callback, user_data ? user_data : nil)
      nil
    end

    def request_image(callback, user_data)
      LibGtk.clipboard_request_image(@pointer.as(LibGtk::Clipboard*), callback, user_data ? user_data : nil)
      nil
    end

    def request_rich_text(buffer, callback, user_data)
      LibGtk.clipboard_request_rich_text(@pointer.as(LibGtk::Clipboard*), buffer.to_unsafe.as(LibGtk::TextBuffer*), callback, user_data ? user_data : nil)
      nil
    end

    def request_targets(callback, user_data)
      LibGtk.clipboard_request_targets(@pointer.as(LibGtk::Clipboard*), callback, user_data ? user_data : nil)
      nil
    end

    def request_text(callback, user_data)
      LibGtk.clipboard_request_text(@pointer.as(LibGtk::Clipboard*), callback, user_data ? user_data : nil)
      nil
    end

    def request_uris(callback, user_data)
      LibGtk.clipboard_request_uris(@pointer.as(LibGtk::Clipboard*), callback, user_data ? user_data : nil)
      nil
    end

    def set_can_store(targets, n_targets)
      LibGtk.clipboard_set_can_store(@pointer.as(LibGtk::Clipboard*), targets ? targets : nil, Int32.new(n_targets))
      nil
    end

    def image=(pixbuf)
      LibGtk.clipboard_set_image(@pointer.as(LibGtk::Clipboard*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      nil
    end

    def set_text(text, len)
      LibGtk.clipboard_set_text(@pointer.as(LibGtk::Clipboard*), text.to_unsafe, Int32.new(len))
      nil
    end

    def store
      LibGtk.clipboard_store(@pointer.as(LibGtk::Clipboard*))
      nil
    end

    def wait_for_contents(target)
      __return_value = LibGtk.clipboard_wait_for_contents(@pointer.as(LibGtk::Clipboard*), target.to_unsafe.as(LibGdk::Atom*))
      Gtk::SelectionData.new(__return_value) if __return_value
    end

    def wait_for_image
      __return_value = LibGtk.clipboard_wait_for_image(@pointer.as(LibGtk::Clipboard*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def wait_for_rich_text(buffer, format, length)
      __return_value = LibGtk.clipboard_wait_for_rich_text(@pointer.as(LibGtk::Clipboard*), buffer.to_unsafe.as(LibGtk::TextBuffer*), format, length)
      __return_value if __return_value
    end

    def wait_for_targets(targets, n_targets)
      __return_value = LibGtk.clipboard_wait_for_targets(@pointer.as(LibGtk::Clipboard*), targets, n_targets)
      __return_value
    end

    def wait_for_text
      __return_value = LibGtk.clipboard_wait_for_text(@pointer.as(LibGtk::Clipboard*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def wait_for_uris
      __return_value = LibGtk.clipboard_wait_for_uris(@pointer.as(LibGtk::Clipboard*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) } if __return_value
    end

    def wait_is_image_available
      __return_value = LibGtk.clipboard_wait_is_image_available(@pointer.as(LibGtk::Clipboard*))
      __return_value
    end

    def wait_is_rich_text_available(buffer)
      __return_value = LibGtk.clipboard_wait_is_rich_text_available(@pointer.as(LibGtk::Clipboard*), buffer.to_unsafe.as(LibGtk::TextBuffer*))
      __return_value
    end

    def wait_is_target_available(target)
      __return_value = LibGtk.clipboard_wait_is_target_available(@pointer.as(LibGtk::Clipboard*), target.to_unsafe.as(LibGdk::Atom*))
      __return_value
    end

    def wait_is_text_available
      __return_value = LibGtk.clipboard_wait_is_text_available(@pointer.as(LibGtk::Clipboard*))
      __return_value
    end

    def wait_is_uris_available
      __return_value = LibGtk.clipboard_wait_is_uris_available(@pointer.as(LibGtk::Clipboard*))
      __return_value
    end

    alias OwnerChangeSignal = Clipboard, Gdk::EventOwnerChange ->
    def on_owner_change(&__block : OwnerChangeSignal)
      __callback = ->(_arg0 : LibGtk::Clipboard*, _arg1 : LibGdk::EventOwnerChange*) {
       __return_value = __block.call(Clipboard.new(_arg0), Gdk::EventOwnerChange.new(_arg1))
       __return_value
      }
      connect("owner-change", __callback)
    end

  end
end

