require "./box"

module Gtk
  class ColorChooserWidget < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::ColorChooserWidget*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorChooserWidget*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ColorChooser
    # Implements Orientable
    def show_editor
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_editor", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.color_chooser_widget_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

