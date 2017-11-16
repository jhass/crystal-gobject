require "./button"

module Gtk
  class LockButton < Button
    @pointer : Void*
    def initialize(pointer : LibGtk::LockButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LockButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def permission
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "permission", gvalue)
      Gio::Permission.cast(gvalue.object)
    end

    def text_lock
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text_lock", gvalue)
      gvalue.string
    end

    def text_unlock
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text_unlock", gvalue)
      gvalue.string
    end

    def tooltip_lock
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tooltip_lock", gvalue)
      gvalue.string
    end

    def tooltip_not_authorized
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tooltip_not_authorized", gvalue)
      gvalue.string
    end

    def tooltip_unlock
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tooltip_unlock", gvalue)
      gvalue.string
    end

    def self.new(permission) : self
      __return_value = LibGtk.lock_button_new(permission ? permission.to_unsafe.as(LibGio::Permission*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def permission
      __return_value = LibGtk.lock_button_get_permission(@pointer.as(LibGtk::LockButton*))
      Gio::Permission.new(__return_value)
    end

    def permission=(permission)
      LibGtk.lock_button_set_permission(@pointer.as(LibGtk::LockButton*), permission ? permission.to_unsafe.as(LibGio::Permission*) : nil)
      nil
    end

  end
end

