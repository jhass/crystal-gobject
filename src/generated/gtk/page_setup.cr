module Gtk
  class PageSetup < GObject::Object
    def initialize(@gtk_page_setup)
    end

    def to_unsafe
      @gtk_page_setup.not_nil!
    end

    def self.new_internal
      __return_value = LibGtk.page_setup_new
      Gtk::PageSetup.new(__return_value)
    end

    def self.new_from_file(file_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_new_from_file(file_name, pointerof(__error))
      GLib::Error.assert __error
      Gtk::PageSetup.new(__return_value)
    end

    def self.new_from_key_file(key_file, group_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_new_from_key_file((key_file.to_unsafe as LibGLib::KeyFile*), group_name && group_name, pointerof(__error))
      GLib::Error.assert __error
      Gtk::PageSetup.new(__return_value)
    end

    def copy
      __return_value = LibGtk.page_setup_copy((to_unsafe as LibGtk::PageSetup*))
      Gtk::PageSetup.new(__return_value)
    end

    def bottom_margin(unit)
      __return_value = LibGtk.page_setup_get_bottom_margin((to_unsafe as LibGtk::PageSetup*), unit)
      __return_value
    end

    def left_margin(unit)
      __return_value = LibGtk.page_setup_get_left_margin((to_unsafe as LibGtk::PageSetup*), unit)
      __return_value
    end

    def orientation
      __return_value = LibGtk.page_setup_get_orientation((to_unsafe as LibGtk::PageSetup*))
      __return_value
    end

    def page_height(unit)
      __return_value = LibGtk.page_setup_get_page_height((to_unsafe as LibGtk::PageSetup*), unit)
      __return_value
    end

    def page_width(unit)
      __return_value = LibGtk.page_setup_get_page_width((to_unsafe as LibGtk::PageSetup*), unit)
      __return_value
    end

    def paper_height(unit)
      __return_value = LibGtk.page_setup_get_paper_height((to_unsafe as LibGtk::PageSetup*), unit)
      __return_value
    end

    def paper_size
      __return_value = LibGtk.page_setup_get_paper_size((to_unsafe as LibGtk::PageSetup*))
      Gtk::PaperSize.new(__return_value)
    end

    def paper_width(unit)
      __return_value = LibGtk.page_setup_get_paper_width((to_unsafe as LibGtk::PageSetup*), unit)
      __return_value
    end

    def right_margin(unit)
      __return_value = LibGtk.page_setup_get_right_margin((to_unsafe as LibGtk::PageSetup*), unit)
      __return_value
    end

    def top_margin(unit)
      __return_value = LibGtk.page_setup_get_top_margin((to_unsafe as LibGtk::PageSetup*), unit)
      __return_value
    end

    def load_file(file_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_load_file((to_unsafe as LibGtk::PageSetup*), file_name, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_key_file(key_file, group_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_load_key_file((to_unsafe as LibGtk::PageSetup*), (key_file.to_unsafe as LibGLib::KeyFile*), group_name && group_name, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_bottom_margin(margin, unit)
      __return_value = LibGtk.page_setup_set_bottom_margin((to_unsafe as LibGtk::PageSetup*), Float64.new(margin), unit)
      __return_value
    end

    def set_left_margin(margin, unit)
      __return_value = LibGtk.page_setup_set_left_margin((to_unsafe as LibGtk::PageSetup*), Float64.new(margin), unit)
      __return_value
    end

    def orientation=(orientation)
      __return_value = LibGtk.page_setup_set_orientation((to_unsafe as LibGtk::PageSetup*), orientation)
      __return_value
    end

    def paper_size=(size)
      __return_value = LibGtk.page_setup_set_paper_size((to_unsafe as LibGtk::PageSetup*), (size.to_unsafe as LibGtk::PaperSize*))
      __return_value
    end

    def paper_size_and_default_margins=(size)
      __return_value = LibGtk.page_setup_set_paper_size_and_default_margins((to_unsafe as LibGtk::PageSetup*), (size.to_unsafe as LibGtk::PaperSize*))
      __return_value
    end

    def set_right_margin(margin, unit)
      __return_value = LibGtk.page_setup_set_right_margin((to_unsafe as LibGtk::PageSetup*), Float64.new(margin), unit)
      __return_value
    end

    def set_top_margin(margin, unit)
      __return_value = LibGtk.page_setup_set_top_margin((to_unsafe as LibGtk::PageSetup*), Float64.new(margin), unit)
      __return_value
    end

    def to_file(file_name)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_to_file((to_unsafe as LibGtk::PageSetup*), file_name, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def to_key_file(key_file, group_name)
      __return_value = LibGtk.page_setup_to_key_file((to_unsafe as LibGtk::PageSetup*), (key_file.to_unsafe as LibGLib::KeyFile*), group_name)
      __return_value
    end

  end
end

