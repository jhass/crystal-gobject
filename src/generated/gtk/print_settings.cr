module Gtk
  class PrintSettings < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::PrintSettings*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PrintSettings*)
    end

    def self.new : self
      __return_value = LibGtk.print_settings_new
      cast Gtk::PrintSettings.new(__return_value)
    end

    def self.new_from_file(file_name) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_settings_new_from_file(file_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast Gtk::PrintSettings.new(__return_value)
    end

    def self.new_from_gvariant(variant) : self
      __return_value = LibGtk.print_settings_new_from_gvariant(variant.to_unsafe.as(LibGLib::Variant*))
      cast Gtk::PrintSettings.new(__return_value)
    end

    def self.new_from_key_file(key_file, group_name) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_settings_new_from_key_file(key_file.to_unsafe.as(LibGLib::KeyFile*), group_name ? group_name.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gtk::PrintSettings.new(__return_value)
    end

    def copy
      __return_value = LibGtk.print_settings_copy(@pointer.as(LibGtk::PrintSettings*))
      Gtk::PrintSettings.new(__return_value)
    end

    def foreach(func, user_data)
      LibGtk.print_settings_foreach(@pointer.as(LibGtk::PrintSettings*), func, user_data ? user_data : nil)
      nil
    end

    def get(key)
      __return_value = LibGtk.print_settings_get(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def bool(key)
      __return_value = LibGtk.print_settings_get_bool(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe)
      __return_value
    end

    def collate
      __return_value = LibGtk.print_settings_get_collate(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def default_source
      __return_value = LibGtk.print_settings_get_default_source(@pointer.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def dither
      __return_value = LibGtk.print_settings_get_dither(@pointer.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def double(key)
      __return_value = LibGtk.print_settings_get_double(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe)
      __return_value
    end

    def double_with_default(key, _def)
      __return_value = LibGtk.print_settings_get_double_with_default(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe, Float64.new(_def))
      __return_value
    end

    def duplex
      __return_value = LibGtk.print_settings_get_duplex(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def finishings
      __return_value = LibGtk.print_settings_get_finishings(@pointer.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def int(key)
      __return_value = LibGtk.print_settings_get_int(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe)
      __return_value
    end

    def int_with_default(key, _def)
      __return_value = LibGtk.print_settings_get_int_with_default(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe, Int32.new(_def))
      __return_value
    end

    def length(key, unit : Gtk::Unit)
      __return_value = LibGtk.print_settings_get_length(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe, unit)
      __return_value
    end

    def media_type
      __return_value = LibGtk.print_settings_get_media_type(@pointer.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def n_copies
      __return_value = LibGtk.print_settings_get_n_copies(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def number_up
      __return_value = LibGtk.print_settings_get_number_up(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def number_up_layout
      __return_value = LibGtk.print_settings_get_number_up_layout(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def orientation
      __return_value = LibGtk.print_settings_get_orientation(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def output_bin
      __return_value = LibGtk.print_settings_get_output_bin(@pointer.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def page_ranges(num_ranges)
      __return_value = LibGtk.print_settings_get_page_ranges(@pointer.as(LibGtk::PrintSettings*), num_ranges)
      PointerIterator.new(__return_value) {|__item| Gtk::PageRange.new(__item) }
    end

    def page_set
      __return_value = LibGtk.print_settings_get_page_set(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def paper_height(unit : Gtk::Unit)
      __return_value = LibGtk.print_settings_get_paper_height(@pointer.as(LibGtk::PrintSettings*), unit)
      __return_value
    end

    def paper_size
      __return_value = LibGtk.print_settings_get_paper_size(@pointer.as(LibGtk::PrintSettings*))
      Gtk::PaperSize.new(__return_value)
    end

    def paper_width(unit : Gtk::Unit)
      __return_value = LibGtk.print_settings_get_paper_width(@pointer.as(LibGtk::PrintSettings*), unit)
      __return_value
    end

    def print_pages
      __return_value = LibGtk.print_settings_get_print_pages(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def printer
      __return_value = LibGtk.print_settings_get_printer(@pointer.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def printer_lpi
      __return_value = LibGtk.print_settings_get_printer_lpi(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def quality
      __return_value = LibGtk.print_settings_get_quality(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def resolution
      __return_value = LibGtk.print_settings_get_resolution(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def resolution_x
      __return_value = LibGtk.print_settings_get_resolution_x(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def resolution_y
      __return_value = LibGtk.print_settings_get_resolution_y(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def reverse
      __return_value = LibGtk.print_settings_get_reverse(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def scale
      __return_value = LibGtk.print_settings_get_scale(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def use_color
      __return_value = LibGtk.print_settings_get_use_color(@pointer.as(LibGtk::PrintSettings*))
      __return_value
    end

    def has_key(key)
      __return_value = LibGtk.print_settings_has_key(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe)
      __return_value
    end

    def load_file(file_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_settings_load_file(@pointer.as(LibGtk::PrintSettings*), file_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_key_file(key_file, group_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_settings_load_key_file(@pointer.as(LibGtk::PrintSettings*), key_file.to_unsafe.as(LibGLib::KeyFile*), group_name ? group_name.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set(key, value)
      LibGtk.print_settings_set(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe, value ? value.to_unsafe : nil)
      nil
    end

    def set_bool(key, value)
      LibGtk.print_settings_set_bool(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe, value)
      nil
    end

    def collate=(collate)
      LibGtk.print_settings_set_collate(@pointer.as(LibGtk::PrintSettings*), collate)
      nil
    end

    def default_source=(default_source)
      LibGtk.print_settings_set_default_source(@pointer.as(LibGtk::PrintSettings*), default_source.to_unsafe)
      nil
    end

    def dither=(dither)
      LibGtk.print_settings_set_dither(@pointer.as(LibGtk::PrintSettings*), dither.to_unsafe)
      nil
    end

    def set_double(key, value)
      LibGtk.print_settings_set_double(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe, Float64.new(value))
      nil
    end

    def duplex=(duplex : Gtk::PrintDuplex)
      LibGtk.print_settings_set_duplex(@pointer.as(LibGtk::PrintSettings*), duplex)
      nil
    end

    def finishings=(finishings)
      LibGtk.print_settings_set_finishings(@pointer.as(LibGtk::PrintSettings*), finishings.to_unsafe)
      nil
    end

    def set_int(key, value)
      LibGtk.print_settings_set_int(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe, Int32.new(value))
      nil
    end

    def set_length(key, value, unit : Gtk::Unit)
      LibGtk.print_settings_set_length(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe, Float64.new(value), unit)
      nil
    end

    def media_type=(media_type)
      LibGtk.print_settings_set_media_type(@pointer.as(LibGtk::PrintSettings*), media_type.to_unsafe)
      nil
    end

    def n_copies=(num_copies)
      LibGtk.print_settings_set_n_copies(@pointer.as(LibGtk::PrintSettings*), Int32.new(num_copies))
      nil
    end

    def number_up=(number_up)
      LibGtk.print_settings_set_number_up(@pointer.as(LibGtk::PrintSettings*), Int32.new(number_up))
      nil
    end

    def number_up_layout=(number_up_layout : Gtk::NumberUpLayout)
      LibGtk.print_settings_set_number_up_layout(@pointer.as(LibGtk::PrintSettings*), number_up_layout)
      nil
    end

    def orientation=(orientation : Gtk::PageOrientation)
      LibGtk.print_settings_set_orientation(@pointer.as(LibGtk::PrintSettings*), orientation)
      nil
    end

    def output_bin=(output_bin)
      LibGtk.print_settings_set_output_bin(@pointer.as(LibGtk::PrintSettings*), output_bin.to_unsafe)
      nil
    end

    def set_page_ranges(page_ranges, num_ranges)
      LibGtk.print_settings_set_page_ranges(@pointer.as(LibGtk::PrintSettings*), page_ranges, Int32.new(num_ranges))
      nil
    end

    def page_set=(page_set : Gtk::PageSet)
      LibGtk.print_settings_set_page_set(@pointer.as(LibGtk::PrintSettings*), page_set)
      nil
    end

    def set_paper_height(height, unit : Gtk::Unit)
      LibGtk.print_settings_set_paper_height(@pointer.as(LibGtk::PrintSettings*), Float64.new(height), unit)
      nil
    end

    def paper_size=(paper_size)
      LibGtk.print_settings_set_paper_size(@pointer.as(LibGtk::PrintSettings*), paper_size.to_unsafe.as(LibGtk::PaperSize*))
      nil
    end

    def set_paper_width(width, unit : Gtk::Unit)
      LibGtk.print_settings_set_paper_width(@pointer.as(LibGtk::PrintSettings*), Float64.new(width), unit)
      nil
    end

    def print_pages=(pages : Gtk::PrintPages)
      LibGtk.print_settings_set_print_pages(@pointer.as(LibGtk::PrintSettings*), pages)
      nil
    end

    def printer=(printer)
      LibGtk.print_settings_set_printer(@pointer.as(LibGtk::PrintSettings*), printer.to_unsafe)
      nil
    end

    def printer_lpi=(lpi)
      LibGtk.print_settings_set_printer_lpi(@pointer.as(LibGtk::PrintSettings*), Float64.new(lpi))
      nil
    end

    def quality=(quality : Gtk::PrintQuality)
      LibGtk.print_settings_set_quality(@pointer.as(LibGtk::PrintSettings*), quality)
      nil
    end

    def resolution=(resolution)
      LibGtk.print_settings_set_resolution(@pointer.as(LibGtk::PrintSettings*), Int32.new(resolution))
      nil
    end

    def set_resolution_xy(resolution_x, resolution_y)
      LibGtk.print_settings_set_resolution_xy(@pointer.as(LibGtk::PrintSettings*), Int32.new(resolution_x), Int32.new(resolution_y))
      nil
    end

    def reverse=(reverse)
      LibGtk.print_settings_set_reverse(@pointer.as(LibGtk::PrintSettings*), reverse)
      nil
    end

    def scale=(scale)
      LibGtk.print_settings_set_scale(@pointer.as(LibGtk::PrintSettings*), Float64.new(scale))
      nil
    end

    def use_color=(use_color)
      LibGtk.print_settings_set_use_color(@pointer.as(LibGtk::PrintSettings*), use_color)
      nil
    end

    def to_file(file_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_settings_to_file(@pointer.as(LibGtk::PrintSettings*), file_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def to_gvariant
      __return_value = LibGtk.print_settings_to_gvariant(@pointer.as(LibGtk::PrintSettings*))
      GLib::Variant.new(__return_value)
    end

    def to_key_file(key_file, group_name)
      LibGtk.print_settings_to_key_file(@pointer.as(LibGtk::PrintSettings*), key_file.to_unsafe.as(LibGLib::KeyFile*), group_name.to_unsafe)
      nil
    end

    def unset(key)
      LibGtk.print_settings_unset(@pointer.as(LibGtk::PrintSettings*), key.to_unsafe)
      nil
    end

  end
end

