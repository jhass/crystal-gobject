module Gtk
  class Clipboard < GObject::Object
    @gtk_clipboard : LibGtk::Clipboard*?
    def initialize(@gtk_clipboard : LibGtk::Clipboard*)
    end

    def to_unsafe
      @gtk_clipboard.not_nil!.as(Void*)
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
      __return_value = LibGtk.clipboard_clear(to_unsafe.as(LibGtk::Clipboard*))
      __return_value
    end

    def display
      __return_value = LibGtk.clipboard_get_display(to_unsafe.as(LibGtk::Clipboard*))
      Gdk::Display.new(__return_value)
    end

    def owner
      __return_value = LibGtk.clipboard_get_owner(to_unsafe.as(LibGtk::Clipboard*))
      GObject::Object.new(__return_value) if __return_value
    end

    def request_contents(target, callback : LibGtk::ClipboardReceivedFunc, user_data)
      __return_value = LibGtk.clipboard_request_contents(to_unsafe.as(LibGtk::Clipboard*), target.to_unsafe.as(LibGdk::Atom*), callback, user_data && user_data)
      __return_value
    end

    def request_image(callback : LibGtk::ClipboardImageReceivedFunc, user_data)
      __return_value = LibGtk.clipboard_request_image(to_unsafe.as(LibGtk::Clipboard*), callback, user_data && user_data)
      __return_value
    end

    def request_rich_text(buffer, callback : LibGtk::ClipboardRichTextReceivedFunc, user_data)
      __return_value = LibGtk.clipboard_request_rich_text(to_unsafe.as(LibGtk::Clipboard*), buffer.to_unsafe.as(LibGtk::TextBuffer*), callback, user_data && user_data)
      __return_value
    end

    def request_targets(callback : LibGtk::ClipboardTargetsReceivedFunc, user_data)
      __return_value = LibGtk.clipboard_request_targets(to_unsafe.as(LibGtk::Clipboard*), callback, user_data && user_data)
      __return_value
    end

    def request_text(callback : LibGtk::ClipboardTextReceivedFunc, user_data)
      __return_value = LibGtk.clipboard_request_text(to_unsafe.as(LibGtk::Clipboard*), callback, user_data && user_data)
      __return_value
    end

    def request_uris(callback : LibGtk::ClipboardURIReceivedFunc, user_data)
      __return_value = LibGtk.clipboard_request_uris(to_unsafe.as(LibGtk::Clipboard*), callback, user_data && user_data)
      __return_value
    end

    def set_can_store(targets, n_targets)
      __return_value = LibGtk.clipboard_set_can_store(to_unsafe.as(LibGtk::Clipboard*), targets && targets, Int32.new(n_targets))
      __return_value
    end

    def image=(pixbuf)
      __return_value = LibGtk.clipboard_set_image(to_unsafe.as(LibGtk::Clipboard*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def set_text(text, len)
      __return_value = LibGtk.clipboard_set_text(to_unsafe.as(LibGtk::Clipboard*), text.to_unsafe, Int32.new(len))
      __return_value
    end

    def store
      __return_value = LibGtk.clipboard_store(to_unsafe.as(LibGtk::Clipboard*))
      __return_value
    end

    def wait_for_contents(target)
      __return_value = LibGtk.clipboard_wait_for_contents(to_unsafe.as(LibGtk::Clipboard*), target.to_unsafe.as(LibGdk::Atom*))
      Gtk::SelectionData.new(__return_value) if __return_value
    end

    def wait_for_image
      __return_value = LibGtk.clipboard_wait_for_image(to_unsafe.as(LibGtk::Clipboard*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def wait_for_rich_text(buffer, format, length)
      __return_value = LibGtk.clipboard_wait_for_rich_text(to_unsafe.as(LibGtk::Clipboard*), buffer.to_unsafe.as(LibGtk::TextBuffer*), format.to_unsafe.as(LibGdk::Atom*), UInt64.new(length))
      PointerIterator.new(__return_value) {|__item| __item } if __return_value
    end

    def wait_for_targets(targets, n_targets)
      __return_value = LibGtk.clipboard_wait_for_targets(to_unsafe.as(LibGtk::Clipboard*), targets, Int32.new(n_targets))
      __return_value
    end

    def wait_for_text
      __return_value = LibGtk.clipboard_wait_for_text(to_unsafe.as(LibGtk::Clipboard*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def wait_for_uris
      __return_value = LibGtk.clipboard_wait_for_uris(to_unsafe.as(LibGtk::Clipboard*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) } if __return_value
    end

    def wait_is_image_available
      __return_value = LibGtk.clipboard_wait_is_image_available(to_unsafe.as(LibGtk::Clipboard*))
      __return_value
    end

    def wait_is_rich_text_available(buffer)
      __return_value = LibGtk.clipboard_wait_is_rich_text_available(to_unsafe.as(LibGtk::Clipboard*), buffer.to_unsafe.as(LibGtk::TextBuffer*))
      __return_value
    end

    def wait_is_target_available(target)
      __return_value = LibGtk.clipboard_wait_is_target_available(to_unsafe.as(LibGtk::Clipboard*), target.to_unsafe.as(LibGdk::Atom*))
      __return_value
    end

    def wait_is_text_available
      __return_value = LibGtk.clipboard_wait_is_text_available(to_unsafe.as(LibGtk::Clipboard*))
      __return_value
    end

    def wait_is_uris_available
      __return_value = LibGtk.clipboard_wait_is_uris_available(to_unsafe.as(LibGtk::Clipboard*))
      __return_value
    end

    alias OwnerChangeSignal = Clipboard, Gdk::EventOwnerChange ->
    def on_owner_change(&__block : OwnerChangeSignal)
      __callback = ->(_arg0 : LibGtk::Clipboard*, _arg1 : LibGtk::LibGdk::EventOwnerChange*) {
       __return_value = __block.call(Clipboard.new(_arg0), Gdk::EventOwnerChange.new(_arg1))
       __return_value
      }
      connect("owner-change", __callback)
    end

  end
end

