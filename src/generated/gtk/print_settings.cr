module Gtk
  class PrintSettings < GObject::Object
    @gtk_print_settings : LibGtk::PrintSettings*?
    def initialize(@gtk_print_settings : LibGtk::PrintSettings*)
    end

    def to_unsafe
      @gtk_print_settings.not_nil!.as(Void*)
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

    def self.new_from_key_file(key_file, group_name) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_settings_new_from_key_file(key_file.to_unsafe.as(LibGLib::KeyFile*), group_name && group_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast Gtk::PrintSettings.new(__return_value)
    end

    def copy
      __return_value = LibGtk.print_settings_copy(to_unsafe.as(LibGtk::PrintSettings*))
      Gtk::PrintSettings.new(__return_value)
    end

    def foreach(func : LibGtk::PrintSettingsFunc, user_data)
      __return_value = LibGtk.print_settings_foreach(to_unsafe.as(LibGtk::PrintSettings*), func, user_data && user_data)
      __return_value
    end

    def get(key)
      __return_value = LibGtk.print_settings_get(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def bool(key)
      __return_value = LibGtk.print_settings_get_bool(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe)
      __return_value
    end

    def collate
      __return_value = LibGtk.print_settings_get_collate(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def default_source
      __return_value = LibGtk.print_settings_get_default_source(to_unsafe.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def dither
      __return_value = LibGtk.print_settings_get_dither(to_unsafe.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def double(key)
      __return_value = LibGtk.print_settings_get_double(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe)
      __return_value
    end

    def double_with_default(key, _def)
      __return_value = LibGtk.print_settings_get_double_with_default(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe, Float64.new(_def))
      __return_value
    end

    def duplex
      __return_value = LibGtk.print_settings_get_duplex(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def finishings
      __return_value = LibGtk.print_settings_get_finishings(to_unsafe.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def int(key)
      __return_value = LibGtk.print_settings_get_int(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe)
      __return_value
    end

    def int_with_default(key, _def)
      __return_value = LibGtk.print_settings_get_int_with_default(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe, Int32.new(_def))
      __return_value
    end

    def length(key, unit)
      __return_value = LibGtk.print_settings_get_length(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe, unit)
      __return_value
    end

    def media_type
      __return_value = LibGtk.print_settings_get_media_type(to_unsafe.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def n_copies
      __return_value = LibGtk.print_settings_get_n_copies(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def number_up
      __return_value = LibGtk.print_settings_get_number_up(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def number_up_layout
      __return_value = LibGtk.print_settings_get_number_up_layout(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def orientation
      __return_value = LibGtk.print_settings_get_orientation(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def output_bin
      __return_value = LibGtk.print_settings_get_output_bin(to_unsafe.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def page_ranges(num_ranges)
      __return_value = LibGtk.print_settings_get_page_ranges(to_unsafe.as(LibGtk::PrintSettings*), Int32.new(num_ranges))
      PointerIterator.new(__return_value) {|__item| Gtk::PageRange.new(__item) }
    end

    def page_set
      __return_value = LibGtk.print_settings_get_page_set(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def paper_height(unit)
      __return_value = LibGtk.print_settings_get_paper_height(to_unsafe.as(LibGtk::PrintSettings*), unit)
      __return_value
    end

    def paper_size
      __return_value = LibGtk.print_settings_get_paper_size(to_unsafe.as(LibGtk::PrintSettings*))
      Gtk::PaperSize.new(__return_value)
    end

    def paper_width(unit)
      __return_value = LibGtk.print_settings_get_paper_width(to_unsafe.as(LibGtk::PrintSettings*), unit)
      __return_value
    end

    def print_pages
      __return_value = LibGtk.print_settings_get_print_pages(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def printer
      __return_value = LibGtk.print_settings_get_printer(to_unsafe.as(LibGtk::PrintSettings*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def printer_lpi
      __return_value = LibGtk.print_settings_get_printer_lpi(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def quality
      __return_value = LibGtk.print_settings_get_quality(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def resolution
      __return_value = LibGtk.print_settings_get_resolution(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def resolution_x
      __return_value = LibGtk.print_settings_get_resolution_x(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def resolution_y
      __return_value = LibGtk.print_settings_get_resolution_y(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def reverse
      __return_value = LibGtk.print_settings_get_reverse(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def scale
      __return_value = LibGtk.print_settings_get_scale(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def use_color
      __return_value = LibGtk.print_settings_get_use_color(to_unsafe.as(LibGtk::PrintSettings*))
      __return_value
    end

    def has_key(key)
      __return_value = LibGtk.print_settings_has_key(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe)
      __return_value
    end

    def load_file(file_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_settings_load_file(to_unsafe.as(LibGtk::PrintSettings*), file_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_key_file(key_file, group_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_settings_load_key_file(to_unsafe.as(LibGtk::PrintSettings*), key_file.to_unsafe.as(LibGLib::KeyFile*), group_name && group_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set(key, value)
      __return_value = LibGtk.print_settings_set(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe, value && value.to_unsafe)
      __return_value
    end

    def set_bool(key, value)
      __return_value = LibGtk.print_settings_set_bool(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe, value)
      __return_value
    end

    def collate=(collate)
      __return_value = LibGtk.print_settings_set_collate(to_unsafe.as(LibGtk::PrintSettings*), collate)
      __return_value
    end

    def default_source=(default_source)
      __return_value = LibGtk.print_settings_set_default_source(to_unsafe.as(LibGtk::PrintSettings*), default_source.to_unsafe)
      __return_value
    end

    def dither=(dither)
      __return_value = LibGtk.print_settings_set_dither(to_unsafe.as(LibGtk::PrintSettings*), dither.to_unsafe)
      __return_value
    end

    def set_double(key, value)
      __return_value = LibGtk.print_settings_set_double(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe, Float64.new(value))
      __return_value
    end

    def duplex=(duplex)
      __return_value = LibGtk.print_settings_set_duplex(to_unsafe.as(LibGtk::PrintSettings*), duplex)
      __return_value
    end

    def finishings=(finishings)
      __return_value = LibGtk.print_settings_set_finishings(to_unsafe.as(LibGtk::PrintSettings*), finishings.to_unsafe)
      __return_value
    end

    def set_int(key, value)
      __return_value = LibGtk.print_settings_set_int(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe, Int32.new(value))
      __return_value
    end

    def set_length(key, value, unit)
      __return_value = LibGtk.print_settings_set_length(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe, Float64.new(value), unit)
      __return_value
    end

    def media_type=(media_type)
      __return_value = LibGtk.print_settings_set_media_type(to_unsafe.as(LibGtk::PrintSettings*), media_type.to_unsafe)
      __return_value
    end

    def n_copies=(num_copies)
      __return_value = LibGtk.print_settings_set_n_copies(to_unsafe.as(LibGtk::PrintSettings*), Int32.new(num_copies))
      __return_value
    end

    def number_up=(number_up)
      __return_value = LibGtk.print_settings_set_number_up(to_unsafe.as(LibGtk::PrintSettings*), Int32.new(number_up))
      __return_value
    end

    def number_up_layout=(number_up_layout)
      __return_value = LibGtk.print_settings_set_number_up_layout(to_unsafe.as(LibGtk::PrintSettings*), number_up_layout)
      __return_value
    end

    def orientation=(orientation)
      __return_value = LibGtk.print_settings_set_orientation(to_unsafe.as(LibGtk::PrintSettings*), orientation)
      __return_value
    end

    def output_bin=(output_bin)
      __return_value = LibGtk.print_settings_set_output_bin(to_unsafe.as(LibGtk::PrintSettings*), output_bin.to_unsafe)
      __return_value
    end

    def set_page_ranges(page_ranges, num_ranges)
      __return_value = LibGtk.print_settings_set_page_ranges(to_unsafe.as(LibGtk::PrintSettings*), page_ranges, Int32.new(num_ranges))
      __return_value
    end

    def page_set=(page_set)
      __return_value = LibGtk.print_settings_set_page_set(to_unsafe.as(LibGtk::PrintSettings*), page_set)
      __return_value
    end

    def set_paper_height(height, unit)
      __return_value = LibGtk.print_settings_set_paper_height(to_unsafe.as(LibGtk::PrintSettings*), Float64.new(height), unit)
      __return_value
    end

    def paper_size=(paper_size)
      __return_value = LibGtk.print_settings_set_paper_size(to_unsafe.as(LibGtk::PrintSettings*), paper_size.to_unsafe.as(LibGtk::PaperSize*))
      __return_value
    end

    def set_paper_width(width, unit)
      __return_value = LibGtk.print_settings_set_paper_width(to_unsafe.as(LibGtk::PrintSettings*), Float64.new(width), unit)
      __return_value
    end

    def print_pages=(pages)
      __return_value = LibGtk.print_settings_set_print_pages(to_unsafe.as(LibGtk::PrintSettings*), pages)
      __return_value
    end

    def printer=(printer)
      __return_value = LibGtk.print_settings_set_printer(to_unsafe.as(LibGtk::PrintSettings*), printer.to_unsafe)
      __return_value
    end

    def printer_lpi=(lpi)
      __return_value = LibGtk.print_settings_set_printer_lpi(to_unsafe.as(LibGtk::PrintSettings*), Float64.new(lpi))
      __return_value
    end

    def quality=(quality)
      __return_value = LibGtk.print_settings_set_quality(to_unsafe.as(LibGtk::PrintSettings*), quality)
      __return_value
    end

    def resolution=(resolution)
      __return_value = LibGtk.print_settings_set_resolution(to_unsafe.as(LibGtk::PrintSettings*), Int32.new(resolution))
      __return_value
    end

    def set_resolution_xy(resolution_x, resolution_y)
      __return_value = LibGtk.print_settings_set_resolution_xy(to_unsafe.as(LibGtk::PrintSettings*), Int32.new(resolution_x), Int32.new(resolution_y))
      __return_value
    end

    def reverse=(reverse)
      __return_value = LibGtk.print_settings_set_reverse(to_unsafe.as(LibGtk::PrintSettings*), reverse)
      __return_value
    end

    def scale=(scale)
      __return_value = LibGtk.print_settings_set_scale(to_unsafe.as(LibGtk::PrintSettings*), Float64.new(scale))
      __return_value
    end

    def use_color=(use_color)
      __return_value = LibGtk.print_settings_set_use_color(to_unsafe.as(LibGtk::PrintSettings*), use_color)
      __return_value
    end

    def to_file(file_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.print_settings_to_file(to_unsafe.as(LibGtk::PrintSettings*), file_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def to_key_file(key_file, group_name)
      __return_value = LibGtk.print_settings_to_key_file(to_unsafe.as(LibGtk::PrintSettings*), key_file.to_unsafe.as(LibGLib::KeyFile*), group_name.to_unsafe)
      __return_value
    end

    def unset(key)
      __return_value = LibGtk.print_settings_unset(to_unsafe.as(LibGtk::PrintSettings*), key.to_unsafe)
      __return_value
    end

  end
end

