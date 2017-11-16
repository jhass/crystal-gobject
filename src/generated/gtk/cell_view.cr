require "./widget"

module Gtk
  class CellView < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::CellView*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellView*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellLayout
    # Implements Orientable

    def background_gdk
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "background_gdk", gvalue)
      Gdk::Color.cast(gvalue.object)
    end

    def background_rgba
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "background_rgba", gvalue)
      Gdk::RGBA.cast(gvalue.object)
    end

    def background_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "background_set", gvalue)
      gvalue.boolean
    end

    def cell_area
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cell_area", gvalue)
      Gtk::CellArea.cast(gvalue.object)
    end

    def cell_area_context
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cell_area_context", gvalue)
      Gtk::CellAreaContext.cast(gvalue.object)
    end

    def draw_sensitive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "draw_sensitive", gvalue)
      gvalue.boolean
    end

    def fit_model
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "fit_model", gvalue)
      gvalue.boolean
    end

    def model
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "model", gvalue)
      gvalue
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
      __return_value = LibGtk.cell_view_get_displayed_row(@pointer.as(LibGtk::CellView*))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def draw_sensitive
      __return_value = LibGtk.cell_view_get_draw_sensitive(@pointer.as(LibGtk::CellView*))
      __return_value
    end

    def fit_model
      __return_value = LibGtk.cell_view_get_fit_model(@pointer.as(LibGtk::CellView*))
      __return_value
    end

    def model
      __return_value = LibGtk.cell_view_get_model(@pointer.as(LibGtk::CellView*))
      __return_value if __return_value
    end

    def size_of_row(path, requisition)
      __return_value = LibGtk.cell_view_get_size_of_row(@pointer.as(LibGtk::CellView*), path.to_unsafe.as(LibGtk::TreePath*), requisition)
      __return_value
    end

    def background_color=(color)
      LibGtk.cell_view_set_background_color(@pointer.as(LibGtk::CellView*), color.to_unsafe.as(LibGdk::Color*))
      nil
    end

    def background_rgba=(rgba)
      LibGtk.cell_view_set_background_rgba(@pointer.as(LibGtk::CellView*), rgba.to_unsafe.as(LibGdk::RGBA*))
      nil
    end

    def displayed_row=(path)
      LibGtk.cell_view_set_displayed_row(@pointer.as(LibGtk::CellView*), path ? path.to_unsafe.as(LibGtk::TreePath*) : nil)
      nil
    end

    def draw_sensitive=(draw_sensitive)
      LibGtk.cell_view_set_draw_sensitive(@pointer.as(LibGtk::CellView*), draw_sensitive)
      nil
    end

    def fit_model=(fit_model)
      LibGtk.cell_view_set_fit_model(@pointer.as(LibGtk::CellView*), fit_model)
      nil
    end

    def model=(model)
      LibGtk.cell_view_set_model(@pointer.as(LibGtk::CellView*), model ? model.to_unsafe.as(LibGtk::TreeModel*) : nil)
      nil
    end

  end
end

