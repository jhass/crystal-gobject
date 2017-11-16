module Gtk
  class PrintContext < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::PrintContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PrintContext*)
    end

    def create_pango_context
      __return_value = LibGtk.print_context_create_pango_context(@pointer.as(LibGtk::PrintContext*))
      Pango::Context.new(__return_value)
    end

    def create_pango_layout
      __return_value = LibGtk.print_context_create_pango_layout(@pointer.as(LibGtk::PrintContext*))
      Pango::Layout.new(__return_value)
    end

    def cairo_context
      __return_value = LibGtk.print_context_get_cairo_context(@pointer.as(LibGtk::PrintContext*))
      Cairo::Context.new(__return_value)
    end

    def dpi_x
      __return_value = LibGtk.print_context_get_dpi_x(@pointer.as(LibGtk::PrintContext*))
      __return_value
    end

    def dpi_y
      __return_value = LibGtk.print_context_get_dpi_y(@pointer.as(LibGtk::PrintContext*))
      __return_value
    end

    def hard_margins(top, bottom, left, right)
      __return_value = LibGtk.print_context_get_hard_margins(@pointer.as(LibGtk::PrintContext*), top, bottom, left, right)
      __return_value
    end

    def height
      __return_value = LibGtk.print_context_get_height(@pointer.as(LibGtk::PrintContext*))
      __return_value
    end

    def page_setup
      __return_value = LibGtk.print_context_get_page_setup(@pointer.as(LibGtk::PrintContext*))
      Gtk::PageSetup.new(__return_value)
    end

    def pango_fontmap
      __return_value = LibGtk.print_context_get_pango_fontmap(@pointer.as(LibGtk::PrintContext*))
      Pango::FontMap.new(__return_value)
    end

    def width
      __return_value = LibGtk.print_context_get_width(@pointer.as(LibGtk::PrintContext*))
      __return_value
    end

    def set_cairo_context(cr, dpi_x, dpi_y)
      LibGtk.print_context_set_cairo_context(@pointer.as(LibGtk::PrintContext*), cr.to_unsafe.as(LibCairo::Context*), Float64.new(dpi_x), Float64.new(dpi_y))
      nil
    end

  end
end

