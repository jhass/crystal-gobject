require "./box"

module Gtk
  class FontChooserWidget < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::FontChooserWidget*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FontChooserWidget*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FontChooser
    # Implements Orientable
    def tweak_action
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tweak_action", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.font_chooser_widget_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

