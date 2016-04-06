require "./widget"

module Gtk
  class CellView < Widget
    def initialize(@gtk_cell_view)
    end

    def to_unsafe
      @gtk_cell_view.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellLayout
    # Implements Orientable









    def self.new_internal
      __return_value = LibGtk.cell_view_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_context(area, context)
      __return_value = LibGtk.cell_view_new_with_context((area.to_unsafe as LibGtk::CellArea*), (context.to_unsafe as LibGtk::CellAreaContext*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_markup(markup)
      __return_value = LibGtk.cell_view_new_with_markup(markup)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_pixbuf(pixbuf)
      __return_value = LibGtk.cell_view_new_with_pixbuf((pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_text(text)
      __return_value = LibGtk.cell_view_new_with_text(text)
      Gtk::Widget.new(__return_value)
    end

    def displayed_row
      __return_value = LibGtk.cell_view_get_displayed_row((to_unsafe as LibGtk::CellView*))
      Gtk::TreePath.new(__return_value)
    end

    def draw_sensitive
      __return_value = LibGtk.cell_view_get_draw_sensitive((to_unsafe as LibGtk::CellView*))
      __return_value
    end

    def fit_model
      __return_value = LibGtk.cell_view_get_fit_model((to_unsafe as LibGtk::CellView*))
      __return_value
    end

    def model
      __return_value = LibGtk.cell_view_get_model((to_unsafe as LibGtk::CellView*))
      __return_value
    end

    def size_of_row(path, requisition)
      __return_value = LibGtk.cell_view_get_size_of_row((to_unsafe as LibGtk::CellView*), (path.to_unsafe as LibGtk::TreePath*), requisition)
      __return_value
    end

    def background_color=(color)
      __return_value = LibGtk.cell_view_set_background_color((to_unsafe as LibGtk::CellView*), (color.to_unsafe as LibGdk::Color*))
      __return_value
    end

    def background_rgba=(rgba)
      __return_value = LibGtk.cell_view_set_background_rgba((to_unsafe as LibGtk::CellView*), (rgba.to_unsafe as LibGdk::RGBA*))
      __return_value
    end

    def displayed_row=(path)
      __return_value = LibGtk.cell_view_set_displayed_row((to_unsafe as LibGtk::CellView*), path && (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def draw_sensitive=(draw_sensitive)
      __return_value = LibGtk.cell_view_set_draw_sensitive((to_unsafe as LibGtk::CellView*), draw_sensitive)
      __return_value
    end

    def fit_model=(fit_model)
      __return_value = LibGtk.cell_view_set_fit_model((to_unsafe as LibGtk::CellView*), fit_model)
      __return_value
    end

    def model=(model)
      __return_value = LibGtk.cell_view_set_model((to_unsafe as LibGtk::CellView*), model && (model.to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

  end
end

