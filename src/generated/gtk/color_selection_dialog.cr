require "./dialog"

module Gtk
  class ColorSelectionDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::ColorSelectionDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorSelectionDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def cancel_button
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cancel_button", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def color_selection
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "color_selection", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def help_button
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "help_button", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def ok_button
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ok_button", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def self.new(title) : self
      __return_value = LibGtk.color_selection_dialog_new(title.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def color_selection
      __return_value = LibGtk.color_selection_dialog_get_color_selection(@pointer.as(LibGtk::ColorSelectionDialog*))
      Gtk::Widget.new(__return_value)
    end

  end
end

