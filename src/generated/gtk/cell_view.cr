require "./widget"

module Gtk
  class CellView < Widget
    @gtk_cell_view : LibGtk::CellView*?
    def initialize(@gtk_cell_view : LibGtk::CellView*)
    end

    def to_unsafe
      @gtk_cell_view.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellLayout
    # Implements Orientable

    def background_gdk
      __return_value = LibGtk.cell_view_get_background_gdk(to_unsafe.as(LibGtk::CellView*))
      Gdk::Color.new(__return_value)
    end

    def background_rgba
      __return_value = LibGtk.cell_view_get_background_rgba(to_unsafe.as(LibGtk::CellView*))
      Gdk::RGBA.new(__return_value)
    end

    def background_set
      __return_value = LibGtk.cell_view_get_background_set(to_unsafe.as(LibGtk::CellView*))
      __return_value
    end

    def cell_area
      __return_value = LibGtk.cell_view_get_cell_area(to_unsafe.as(LibGtk::CellView*))
      Gtk::CellArea.new(__return_value)
    end

    def cell_area_context
      __return_value = LibGtk.cell_view_get_cell_area_context(to_unsafe.as(LibGtk::CellView*))
      Gtk::CellAreaContext.new(__return_value)
    end

    def draw_sensitive
      __return_value = LibGtk.cell_view_get_draw_sensitive(to_unsafe.as(LibGtk::CellView*))
      __return_value
    end

    def fit_model
      __return_value = LibGtk.cell_view_get_fit_model(to_unsafe.as(LibGtk::CellView*))
      __return_value
    end

    def model
      __return_value = LibGtk.cell_view_get_model(to_unsafe.as(LibGtk::CellView*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.cell_view_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_context(area, context) : self
      __return_value = LibGtk.cell_view_new_with_context(area.to_unsafe.as(LibGtk::CellArea*), context.to_unsafe.as(LibGtk::CellAreaContext*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_markup(markup) : self
      __return_value = LibGtk.cell_view_new_with_markup(markup.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_pixbuf(pixbuf) : self
      __return_value = LibGtk.cell_view_new_with_pixbuf(pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_text(text) : self
      __return_value = LibGtk.cell_view_new_with_text(text.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def displayed_row
      __return_value = LibGtk.cell_view_get_displayed_row(to_unsafe.as(LibGtk::CellView*))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def draw_sensitive
      __return_value = LibGtk.cell_view_get_draw_sensitive(to_unsafe.as(LibGtk::CellView*))
      __return_value
    end

    def fit_model
      __return_value = LibGtk.cell_view_get_fit_model(to_unsafe.as(LibGtk::CellView*))
      __return_value
    end

    def model
      __return_value = LibGtk.cell_view_get_model(to_unsafe.as(LibGtk::CellView*))
      __return_value if __return_value
    end

    def size_of_row(path, requisition)
      __return_value = LibGtk.cell_view_get_size_of_row(to_unsafe.as(LibGtk::CellView*), path.to_unsafe.as(LibGtk::TreePath*), requisition)
      __return_value
    end

    def background_color=(color)
      LibGtk.cell_view_set_background_color(to_unsafe.as(LibGtk::CellView*), color.to_unsafe.as(LibGdk::Color*))
      nil
    end

    def background_rgba=(rgba)
      LibGtk.cell_view_set_background_rgba(to_unsafe.as(LibGtk::CellView*), rgba.to_unsafe.as(LibGdk::RGBA*))
      nil
    end

    def displayed_row=(path)
      LibGtk.cell_view_set_displayed_row(to_unsafe.as(LibGtk::CellView*), path ? path.to_unsafe.as(LibGtk::TreePath*) : nil)
      nil
    end

    def draw_sensitive=(draw_sensitive)
      LibGtk.cell_view_set_draw_sensitive(to_unsafe.as(LibGtk::CellView*), draw_sensitive)
      nil
    end

    def fit_model=(fit_model)
      LibGtk.cell_view_set_fit_model(to_unsafe.as(LibGtk::CellView*), fit_model)
      nil
    end

    def model=(model)
      LibGtk.cell_view_set_model(to_unsafe.as(LibGtk::CellView*), model ? model.to_unsafe.as(LibGtk::TreeModel*) : nil)
      nil
    end

  end
end

