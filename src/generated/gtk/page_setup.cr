module Gtk
  class PageSetup < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::PageSetup*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PageSetup*)
    end

    def self.new : self
      __return_value = LibGtk.page_setup_new
      cast Gtk::PageSetup.new(__return_value)
    end

    def self.new_from_file(file_name) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_new_from_file(file_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast Gtk::PageSetup.new(__return_value)
    end

    def self.new_from_gvariant(variant) : self
      __return_value = LibGtk.page_setup_new_from_gvariant(variant.to_unsafe.as(LibGLib::Variant*))
      cast Gtk::PageSetup.new(__return_value)
    end

    def self.new_from_key_file(key_file, group_name) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_new_from_key_file(key_file.to_unsafe.as(LibGLib::KeyFile*), group_name ? group_name.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gtk::PageSetup.new(__return_value)
    end

    def copy
      __return_value = LibGtk.page_setup_copy(@pointer.as(LibGtk::PageSetup*))
      Gtk::PageSetup.new(__return_value)
    end

    def bottom_margin(unit : Gtk::Unit)
      __return_value = LibGtk.page_setup_get_bottom_margin(@pointer.as(LibGtk::PageSetup*), unit)
      __return_value
    end

    def left_margin(unit : Gtk::Unit)
      __return_value = LibGtk.page_setup_get_left_margin(@pointer.as(LibGtk::PageSetup*), unit)
      __return_value
    end

    def orientation
      __return_value = LibGtk.page_setup_get_orientation(@pointer.as(LibGtk::PageSetup*))
      __return_value
    end

    def page_height(unit : Gtk::Unit)
      __return_value = LibGtk.page_setup_get_page_height(@pointer.as(LibGtk::PageSetup*), unit)
      __return_value
    end

    def page_width(unit : Gtk::Unit)
      __return_value = LibGtk.page_setup_get_page_width(@pointer.as(LibGtk::PageSetup*), unit)
      __return_value
    end

    def paper_height(unit : Gtk::Unit)
      __return_value = LibGtk.page_setup_get_paper_height(@pointer.as(LibGtk::PageSetup*), unit)
      __return_value
    end

    def paper_size
      __return_value = LibGtk.page_setup_get_paper_size(@pointer.as(LibGtk::PageSetup*))
      Gtk::PaperSize.new(__return_value)
    end

    def paper_width(unit : Gtk::Unit)
      __return_value = LibGtk.page_setup_get_paper_width(@pointer.as(LibGtk::PageSetup*), unit)
      __return_value
    end

    def right_margin(unit : Gtk::Unit)
      __return_value = LibGtk.page_setup_get_right_margin(@pointer.as(LibGtk::PageSetup*), unit)
      __return_value
    end

    def top_margin(unit : Gtk::Unit)
      __return_value = LibGtk.page_setup_get_top_margin(@pointer.as(LibGtk::PageSetup*), unit)
      __return_value
    end

    def load_file(file_name) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_load_file(@pointer.as(LibGtk::PageSetup*), file_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def load_key_file(key_file, group_name) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_load_key_file(@pointer.as(LibGtk::PageSetup*), key_file.to_unsafe.as(LibGLib::KeyFile*), group_name ? group_name.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_bottom_margin(margin, unit : Gtk::Unit)
      LibGtk.page_setup_set_bottom_margin(@pointer.as(LibGtk::PageSetup*), Float64.new(margin), unit)
      nil
    end

    def set_left_margin(margin, unit : Gtk::Unit)
      LibGtk.page_setup_set_left_margin(@pointer.as(LibGtk::PageSetup*), Float64.new(margin), unit)
      nil
    end

    def orientation=(orientation : Gtk::PageOrientation)
      LibGtk.page_setup_set_orientation(@pointer.as(LibGtk::PageSetup*), orientation)
      nil
    end

    def paper_size=(size)
      LibGtk.page_setup_set_paper_size(@pointer.as(LibGtk::PageSetup*), size.to_unsafe.as(LibGtk::PaperSize*))
      nil
    end

    def paper_size_and_default_margins=(size)
      LibGtk.page_setup_set_paper_size_and_default_margins(@pointer.as(LibGtk::PageSetup*), size.to_unsafe.as(LibGtk::PaperSize*))
      nil
    end

    def set_right_margin(margin, unit : Gtk::Unit)
      LibGtk.page_setup_set_right_margin(@pointer.as(LibGtk::PageSetup*), Float64.new(margin), unit)
      nil
    end

    def set_top_margin(margin, unit : Gtk::Unit)
      LibGtk.page_setup_set_top_margin(@pointer.as(LibGtk::PageSetup*), Float64.new(margin), unit)
      nil
    end

    def to_file(file_name) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.page_setup_to_file(@pointer.as(LibGtk::PageSetup*), file_name.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def to_gvariant
      __return_value = LibGtk.page_setup_to_gvariant(@pointer.as(LibGtk::PageSetup*))
      GLib::Variant.new(__return_value)
    end

    def to_key_file(key_file, group_name)
      LibGtk.page_setup_to_key_file(@pointer.as(LibGtk::PageSetup*), key_file.to_unsafe.as(LibGLib::KeyFile*), group_name.to_unsafe)
      nil
    end

  end
end

