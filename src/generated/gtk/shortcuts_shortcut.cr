require "./box"

module Gtk
  class ShortcutsShortcut < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::ShortcutsShortcut*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ShortcutsShortcut*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable

    def accelerator
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accelerator", gvalue)
      gvalue.string
    end

    def action_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "action_name", gvalue)
      gvalue.string
    end

    def direction
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "direction", gvalue)
      gvalue.enum
    end

    def icon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon", gvalue)
      gvalue
    end

    def icon_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_set", gvalue)
      gvalue.boolean
    end

    def shortcut_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "shortcut_type", gvalue)
      gvalue.enum
    end

    def subtitle
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "subtitle", gvalue)
      gvalue.string
    end

    def subtitle_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "subtitle_set", gvalue)
      gvalue.boolean
    end

    def title
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "title", gvalue)
      gvalue.string
    end


  end
end

