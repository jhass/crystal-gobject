module Gtk
  class PrintContext < GObject::Object
    def initialize(@gtk_print_context)
    end

    def to_unsafe
      @gtk_print_context.not_nil!
    end

    def create_pango_context
      __return_value = LibGtk.print_context_create_pango_context((to_unsafe as LibGtk::PrintContext*))
      Pango::Context.new(__return_value)
    end

    def create_pango_layout
      __return_value = LibGtk.print_context_create_pango_layout((to_unsafe as LibGtk::PrintContext*))
      Pango::Layout.new(__return_value)
    end

    def cairo_context
      __return_value = LibGtk.print_context_get_cairo_context((to_unsafe as LibGtk::PrintContext*))
      Cairo::Context.new(__return_value)
    end

    def dpi_x
      __return_value = LibGtk.print_context_get_dpi_x((to_unsafe as LibGtk::PrintContext*))
      __return_value
    end

    def dpi_y
      __return_value = LibGtk.print_context_get_dpi_y((to_unsafe as LibGtk::PrintContext*))
      __return_value
    end

    def hard_margins(top, bottom, left, right)
      __return_value = LibGtk.print_context_get_hard_margins((to_unsafe as LibGtk::PrintContext*), Float64.new(top), Float64.new(bottom), Float64.new(left), Float64.new(right))
      __return_value
    end

    def height
      __return_value = LibGtk.print_context_get_height((to_unsafe as LibGtk::PrintContext*))
      __return_value
    end

    def page_setup
      __return_value = LibGtk.print_context_get_page_setup((to_unsafe as LibGtk::PrintContext*))
      Gtk::PageSetup.new(__return_value)
    end

    def pango_fontmap
      __return_value = LibGtk.print_context_get_pango_fontmap((to_unsafe as LibGtk::PrintContext*))
      Pango::FontMap.new(__return_value)
    end

    def width
      __return_value = LibGtk.print_context_get_width((to_unsafe as LibGtk::PrintContext*))
      __return_value
    end

    def set_cairo_context(cr, dpi_x, dpi_y)
      __return_value = LibGtk.print_context_set_cairo_context((to_unsafe as LibGtk::PrintContext*), (cr.to_unsafe as LibCairo::Context*), Float64.new(dpi_x), Float64.new(dpi_y))
      __return_value
    end

  end
end

