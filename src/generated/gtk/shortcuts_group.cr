require "./box"

module Gtk
  class ShortcutsGroup < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::ShortcutsGroup*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ShortcutsGroup*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable

    def height
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "height", gvalue)
      gvalue
    end

    def title
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "title", gvalue)
      gvalue.string
    end


    def view
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "view", gvalue)
      gvalue.string
    end

  end
end

