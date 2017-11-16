require "./box"

module Gtk
  class ShortcutLabel < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::ShortcutLabel*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ShortcutLabel*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def accelerator
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accelerator", gvalue)
      gvalue.string
    end

    def disabled_text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "disabled_text", gvalue)
      gvalue.string
    end

    def self.new(accelerator) : self
      __return_value = LibGtk.shortcut_label_new(accelerator.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def accelerator
      __return_value = LibGtk.shortcut_label_get_accelerator(@pointer.as(LibGtk::ShortcutLabel*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def disabled_text
      __return_value = LibGtk.shortcut_label_get_disabled_text(@pointer.as(LibGtk::ShortcutLabel*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def accelerator=(accelerator)
      LibGtk.shortcut_label_set_accelerator(@pointer.as(LibGtk::ShortcutLabel*), accelerator.to_unsafe)
      nil
    end

    def disabled_text=(disabled_text)
      LibGtk.shortcut_label_set_disabled_text(@pointer.as(LibGtk::ShortcutLabel*), disabled_text.to_unsafe)
      nil
    end

  end
end

