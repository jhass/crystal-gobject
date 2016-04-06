module Gtk
  class PaperSize
    include GObject::WrappedType

    def initialize(@gtk_paper_size)
    end

    def to_unsafe
      @gtk_paper_size.not_nil!
    end

    def self.new_internal(name)
      __return_value = LibGtk.paper_size_new(name && name)
      Gtk::PaperSize.new(__return_value)
    end

    def self.new_custom(name, display_name, width, height, unit)
      __return_value = LibGtk.paper_size_new_custom(name, display_name, Float64.new(width), Float64.new(height), unit)
      Gtk::PaperSize.new(__return_value)
    end

    def self.new_from_ipp(ipp_name, width, height)
      __return_value = LibGtk.paper_size_new_from_ipp(ipp_name, Float64.new(width), Float64.new(height))
      Gtk::PaperSize.new(__return_value)
    end

    def self.new_from_key_file(key_file, group_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.paper_size_new_from_key_file((key_file.to_unsafe as LibGLib::KeyFile*), group_name, pointerof(__error))
      GLib::Error.assert __error
      Gtk::PaperSize.new(__return_value)
    end

    def self.new_from_ppd(ppd_name, ppd_display_name, width, height)
      __return_value = LibGtk.paper_size_new_from_ppd(ppd_name, ppd_display_name, Float64.new(width), Float64.new(height))
      Gtk::PaperSize.new(__return_value)
    end

    def copy
      __return_value = LibGtk.paper_size_copy((to_unsafe as LibGtk::PaperSize*))
      Gtk::PaperSize.new(__return_value)
    end

    def free
      __return_value = LibGtk.paper_size_free((to_unsafe as LibGtk::PaperSize*))
      __return_value
    end

    def default_bottom_margin(unit)
      __return_value = LibGtk.paper_size_get_default_bottom_margin((to_unsafe as LibGtk::PaperSize*), unit)
      __return_value
    end

    def default_left_margin(unit)
      __return_value = LibGtk.paper_size_get_default_left_margin((to_unsafe as LibGtk::PaperSize*), unit)
      __return_value
    end

    def default_right_margin(unit)
      __return_value = LibGtk.paper_size_get_default_right_margin((to_unsafe as LibGtk::PaperSize*), unit)
      __return_value
    end

    def default_top_margin(unit)
      __return_value = LibGtk.paper_size_get_default_top_margin((to_unsafe as LibGtk::PaperSize*), unit)
      __return_value
    end

    def display_name
      __return_value = LibGtk.paper_size_get_display_name((to_unsafe as LibGtk::PaperSize*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def height(unit)
      __return_value = LibGtk.paper_size_get_height((to_unsafe as LibGtk::PaperSize*), unit)
      __return_value
    end

    def name
      __return_value = LibGtk.paper_size_get_name((to_unsafe as LibGtk::PaperSize*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def ppd_name
      __return_value = LibGtk.paper_size_get_ppd_name((to_unsafe as LibGtk::PaperSize*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def width(unit)
      __return_value = LibGtk.paper_size_get_width((to_unsafe as LibGtk::PaperSize*), unit)
      __return_value
    end

    def custom?
      __return_value = LibGtk.paper_size_is_custom((to_unsafe as LibGtk::PaperSize*))
      __return_value
    end

    def equal?(size2)
      __return_value = LibGtk.paper_size_is_equal((to_unsafe as LibGtk::PaperSize*), (size2.to_unsafe as LibGtk::PaperSize*))
      __return_value
    end

    def ipp?
      __return_value = LibGtk.paper_size_is_ipp((to_unsafe as LibGtk::PaperSize*))
      __return_value
    end

    def set_size(width, height, unit)
      __return_value = LibGtk.paper_size_set_size((to_unsafe as LibGtk::PaperSize*), Float64.new(width), Float64.new(height), unit)
      __return_value
    end

    def to_key_file(key_file, group_name)
      __return_value = LibGtk.paper_size_to_key_file((to_unsafe as LibGtk::PaperSize*), (key_file.to_unsafe as LibGLib::KeyFile*), group_name)
      __return_value
    end

    def self.default
      __return_value = LibGtk.paper_size_get_default
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.paper_sizes(include_custom)
      __return_value = LibGtk.paper_size_get_paper_sizes(include_custom)
      __return_value
    end

  end
end

