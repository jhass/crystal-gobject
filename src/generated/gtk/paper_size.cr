module Gtk
  class PaperSize
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::PaperSize*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PaperSize*)
    end

    def self.new(name) : self
      __return_value = LibGtk.paper_size_new(name ? name.to_unsafe : nil)
      cast Gtk::PaperSize.new(__return_value)
    end

    def self.new_custom(name, display_name, width, height, unit : Gtk::Unit) : self
      __return_value = LibGtk.paper_size_new_custom(name.to_unsafe, display_name.to_unsafe, Float64.new(width), Float64.new(height), unit)
      cast Gtk::PaperSize.new(__return_value)
    end

    def self.new_from_gvariant(variant) : self
      __return_value = LibGtk.paper_size_new_from_gvariant(variant.to_unsafe.as(LibGLib::Variant*))
      cast Gtk::PaperSize.new(__return_value)
    end

    def self.new_from_ipp(ipp_name, width, height) : self
      __return_value = LibGtk.paper_size_new_from_ipp(ipp_name.to_unsafe, Float64.new(width), Float64.new(height))
      cast Gtk::PaperSize.new(__return_value)
    end

    def self.new_from_key_file(key_file, group_name) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.paper_size_new_from_key_file(key_file.to_unsafe.as(LibGLib::KeyFile*), group_name ? group_name.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gtk::PaperSize.new(__return_value)
    end

    def self.new_from_ppd(ppd_name, ppd_display_name, width, height) : self
      __return_value = LibGtk.paper_size_new_from_ppd(ppd_name.to_unsafe, ppd_display_name.to_unsafe, Float64.new(width), Float64.new(height))
      cast Gtk::PaperSize.new(__return_value)
    end

    def copy
      __return_value = LibGtk.paper_size_copy(@pointer.as(LibGtk::PaperSize*))
      Gtk::PaperSize.new(__return_value)
    end

    def free
      LibGtk.paper_size_free(@pointer.as(LibGtk::PaperSize*))
      nil
    end

    def default_bottom_margin(unit : Gtk::Unit)
      __return_value = LibGtk.paper_size_get_default_bottom_margin(@pointer.as(LibGtk::PaperSize*), unit)
      __return_value
    end

    def default_left_margin(unit : Gtk::Unit)
      __return_value = LibGtk.paper_size_get_default_left_margin(@pointer.as(LibGtk::PaperSize*), unit)
      __return_value
    end

    def default_right_margin(unit : Gtk::Unit)
      __return_value = LibGtk.paper_size_get_default_right_margin(@pointer.as(LibGtk::PaperSize*), unit)
      __return_value
    end

    def default_top_margin(unit : Gtk::Unit)
      __return_value = LibGtk.paper_size_get_default_top_margin(@pointer.as(LibGtk::PaperSize*), unit)
      __return_value
    end

    def display_name
      __return_value = LibGtk.paper_size_get_display_name(@pointer.as(LibGtk::PaperSize*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def height(unit : Gtk::Unit)
      __return_value = LibGtk.paper_size_get_height(@pointer.as(LibGtk::PaperSize*), unit)
      __return_value
    end

    def name
      __return_value = LibGtk.paper_size_get_name(@pointer.as(LibGtk::PaperSize*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def ppd_name
      __return_value = LibGtk.paper_size_get_ppd_name(@pointer.as(LibGtk::PaperSize*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def width(unit : Gtk::Unit)
      __return_value = LibGtk.paper_size_get_width(@pointer.as(LibGtk::PaperSize*), unit)
      __return_value
    end

    def custom?
      __return_value = LibGtk.paper_size_is_custom(@pointer.as(LibGtk::PaperSize*))
      __return_value
    end

    def equal?(size2)
      __return_value = LibGtk.paper_size_is_equal(@pointer.as(LibGtk::PaperSize*), size2.to_unsafe.as(LibGtk::PaperSize*))
      __return_value
    end

    def ipp?
      __return_value = LibGtk.paper_size_is_ipp(@pointer.as(LibGtk::PaperSize*))
      __return_value
    end

    def set_size(width, height, unit : Gtk::Unit)
      LibGtk.paper_size_set_size(@pointer.as(LibGtk::PaperSize*), Float64.new(width), Float64.new(height), unit)
      nil
    end

    def to_gvariant
      __return_value = LibGtk.paper_size_to_gvariant(@pointer.as(LibGtk::PaperSize*))
      GLib::Variant.new(__return_value)
    end

    def to_key_file(key_file, group_name)
      LibGtk.paper_size_to_key_file(@pointer.as(LibGtk::PaperSize*), key_file.to_unsafe.as(LibGLib::KeyFile*), group_name.to_unsafe)
      nil
    end

    def self.default
      __return_value = LibGtk.paper_size_get_default
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.paper_sizes(include_custom)
      __return_value = LibGtk.paper_size_get_paper_sizes(include_custom)
      GLib::ListIterator(Gtk::PaperSize, LibGtk::PaperSize*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

  end
end

