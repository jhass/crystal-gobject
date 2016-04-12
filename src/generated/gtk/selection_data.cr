module Gtk
  class SelectionData
    include GObject::WrappedType

    def initialize(@gtk_selection_data)
    end

    def to_unsafe
      @gtk_selection_data.not_nil!
    end

    def copy
      __return_value = LibGtk.selection_data_copy((to_unsafe as LibGtk::SelectionData*))
      Gtk::SelectionData.new(__return_value)
    end

    def free
      __return_value = LibGtk.selection_data_free((to_unsafe as LibGtk::SelectionData*))
      __return_value
    end

    def data_type
      __return_value = LibGtk.selection_data_get_data_type((to_unsafe as LibGtk::SelectionData*))
      Gdk::Atom.new(__return_value)
    end

    def data(length)
      __return_value = LibGtk.selection_data_get_data((to_unsafe as LibGtk::SelectionData*), Int32.new(length))
      PointerIterator.new(__return_value) {|__item_18| __item_18 }
    end

    def display
      __return_value = LibGtk.selection_data_get_display((to_unsafe as LibGtk::SelectionData*))
      Gdk::Display.new(__return_value)
    end

    def format
      __return_value = LibGtk.selection_data_get_format((to_unsafe as LibGtk::SelectionData*))
      __return_value
    end

    def length
      __return_value = LibGtk.selection_data_get_length((to_unsafe as LibGtk::SelectionData*))
      __return_value
    end

    def pixbuf
      __return_value = LibGtk.selection_data_get_pixbuf((to_unsafe as LibGtk::SelectionData*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def selection
      __return_value = LibGtk.selection_data_get_selection((to_unsafe as LibGtk::SelectionData*))
      Gdk::Atom.new(__return_value)
    end

    def target
      __return_value = LibGtk.selection_data_get_target((to_unsafe as LibGtk::SelectionData*))
      Gdk::Atom.new(__return_value)
    end

    def targets(targets, n_atoms)
      __return_value = LibGtk.selection_data_get_targets((to_unsafe as LibGtk::SelectionData*), targets, Int32.new(n_atoms))
      __return_value
    end

    def text
      __return_value = LibGtk.selection_data_get_text((to_unsafe as LibGtk::SelectionData*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def uris
      __return_value = LibGtk.selection_data_get_uris((to_unsafe as LibGtk::SelectionData*))
      PointerIterator.new(__return_value) {|__item_89| (raise "Expected string but got null" unless __item_89; ::String.new(__item_89)) }
    end

    def set(type, format, data, length)
      __return_value = LibGtk.selection_data_set((to_unsafe as LibGtk::SelectionData*), (type.to_unsafe as LibGdk::Atom*), Int32.new(format), data, Int32.new(length))
      __return_value
    end

    def pixbuf=(pixbuf)
      __return_value = LibGtk.selection_data_set_pixbuf((to_unsafe as LibGtk::SelectionData*), (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def set_text(str, len)
      __return_value = LibGtk.selection_data_set_text((to_unsafe as LibGtk::SelectionData*), str, Int32.new(len))
      __return_value
    end

    def uris=(uris)
      __return_value = LibGtk.selection_data_set_uris((to_unsafe as LibGtk::SelectionData*), uris)
      __return_value
    end

    def targets_include_image(writable)
      __return_value = LibGtk.selection_data_targets_include_image((to_unsafe as LibGtk::SelectionData*), writable)
      __return_value
    end

    def targets_include_rich_text(buffer)
      __return_value = LibGtk.selection_data_targets_include_rich_text((to_unsafe as LibGtk::SelectionData*), (buffer.to_unsafe as LibGtk::TextBuffer*))
      __return_value
    end

    def targets_include_text
      __return_value = LibGtk.selection_data_targets_include_text((to_unsafe as LibGtk::SelectionData*))
      __return_value
    end

    def targets_include_uri
      __return_value = LibGtk.selection_data_targets_include_uri((to_unsafe as LibGtk::SelectionData*))
      __return_value
    end

  end
end

