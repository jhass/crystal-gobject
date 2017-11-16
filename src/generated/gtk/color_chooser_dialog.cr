require "./dialog"

module Gtk
  class ColorChooserDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::ColorChooserDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ColorChooserDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ColorChooser
    def show_editor
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_editor", gvalue)
      gvalue.boolean
    end

    def self.new(title, parent) : self
      __return_value = LibGtk.color_chooser_dialog_new(title ? title.to_unsafe : nil, parent ? parent.to_unsafe.as(LibGtk::Window*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

  end
end

