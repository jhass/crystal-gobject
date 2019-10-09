require "./box"

module Gtk
  class ShortcutsSection < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::ShortcutsSection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ShortcutsSection*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def max_height
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_height", gvalue)
      gvalue
    end

    def section_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "section_name", gvalue)
      gvalue.string
    end

    def title
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "title", gvalue)
      gvalue.string
    end

    def view_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "view_name", gvalue)
      gvalue.string
    end

    alias ChangeCurrentPageSignal = ShortcutsSection, Int32 -> Bool
    def on_change_current_page(&__block : ChangeCurrentPageSignal)
      __callback = ->(_arg0 : LibGtk::ShortcutsSection*, _arg1 : Int32*) {
       __return_value = __block.call(ShortcutsSection.new(_arg0), _arg1)
       __return_value
      }
      connect("change-current-page", __callback)
    end

  end
end

