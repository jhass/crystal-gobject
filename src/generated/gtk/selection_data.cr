module Gtk
  class SelectionData
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::SelectionData*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SelectionData*)
    end

    def copy
      __return_value = LibGtk.selection_data_copy(@pointer.as(LibGtk::SelectionData*))
      Gtk::SelectionData.new(__return_value)
    end

    def free
      LibGtk.selection_data_free(@pointer.as(LibGtk::SelectionData*))
      nil
    end

    def data_type
      __return_value = LibGtk.selection_data_get_data_type(@pointer.as(LibGtk::SelectionData*))
      Gdk::Atom.new(__return_value)
    end

    def data(length)
      __return_value = LibGtk.selection_data_get_data(@pointer.as(LibGtk::SelectionData*), length)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def display
      __return_value = LibGtk.selection_data_get_display(@pointer.as(LibGtk::SelectionData*))
      Gdk::Display.new(__return_value)
    end

    def format
      __return_value = LibGtk.selection_data_get_format(@pointer.as(LibGtk::SelectionData*))
      __return_value
    end

    def length
      __return_value = LibGtk.selection_data_get_length(@pointer.as(LibGtk::SelectionData*))
      __return_value
    end

    def pixbuf
      __return_value = LibGtk.selection_data_get_pixbuf(@pointer.as(LibGtk::SelectionData*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def selection
      __return_value = LibGtk.selection_data_get_selection(@pointer.as(LibGtk::SelectionData*))
      Gdk::Atom.new(__return_value)
    end

    def target
      __return_value = LibGtk.selection_data_get_target(@pointer.as(LibGtk::SelectionData*))
      Gdk::Atom.new(__return_value)
    end

    def targets(targets, n_atoms)
      __return_value = LibGtk.selection_data_get_targets(@pointer.as(LibGtk::SelectionData*), targets, n_atoms)
      __return_value
    end

    def text
      __return_value = LibGtk.selection_data_get_text(@pointer.as(LibGtk::SelectionData*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def uris
      __return_value = LibGtk.selection_data_get_uris(@pointer.as(LibGtk::SelectionData*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def set(type, format, data, length)
      LibGtk.selection_data_set(@pointer.as(LibGtk::SelectionData*), type.to_unsafe.as(LibGdk::Atom*), Int32.new(format), data, Int32.new(length))
      nil
    end

    def pixbuf=(pixbuf)
      __return_value = LibGtk.selection_data_set_pixbuf(@pointer.as(LibGtk::SelectionData*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def set_text(str, len)
      __return_value = LibGtk.selection_data_set_text(@pointer.as(LibGtk::SelectionData*), str.to_unsafe, Int32.new(len))
      __return_value
    end

    def uris=(uris)
      __return_value = LibGtk.selection_data_set_uris(@pointer.as(LibGtk::SelectionData*), uris)
      __return_value
    end

    def targets_include_image(writable)
      __return_value = LibGtk.selection_data_targets_include_image(@pointer.as(LibGtk::SelectionData*), writable)
      __return_value
    end

    def targets_include_rich_text(buffer)
      __return_value = LibGtk.selection_data_targets_include_rich_text(@pointer.as(LibGtk::SelectionData*), buffer.to_unsafe.as(LibGtk::TextBuffer*))
      __return_value
    end

    def targets_include_text
      __return_value = LibGtk.selection_data_targets_include_text(@pointer.as(LibGtk::SelectionData*))
      __return_value
    end

    def targets_include_uri
      __return_value = LibGtk.selection_data_targets_include_uri(@pointer.as(LibGtk::SelectionData*))
      __return_value
    end

  end
end

