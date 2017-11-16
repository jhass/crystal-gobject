require "./menu_shell"

module Gtk
  class MenuBar < MenuShell
    @pointer : Void*
    def initialize(pointer : LibGtk::MenuBar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuBar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def child_pack_direction
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "child_pack_direction", gvalue)
      gvalue.enum
    end

    def pack_direction
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pack_direction", gvalue)
      gvalue.enum
    end

    def self.new : self
      __return_value = LibGtk.menu_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_model(model) : self
      __return_value = LibGtk.menu_bar_new_from_model(model.to_unsafe.as(LibGio::MenuModel*))
      cast Gtk::Widget.new(__return_value)
    end

    def child_pack_direction
      __return_value = LibGtk.menu_bar_get_child_pack_direction(@pointer.as(LibGtk::MenuBar*))
      __return_value
    end

    def pack_direction
      __return_value = LibGtk.menu_bar_get_pack_direction(@pointer.as(LibGtk::MenuBar*))
      __return_value
    end

    def child_pack_direction=(child_pack_dir : Gtk::PackDirection)
      LibGtk.menu_bar_set_child_pack_direction(@pointer.as(LibGtk::MenuBar*), child_pack_dir)
      nil
    end

    def pack_direction=(pack_dir : Gtk::PackDirection)
      LibGtk.menu_bar_set_pack_direction(@pointer.as(LibGtk::MenuBar*), pack_dir)
      nil
    end

  end
end

