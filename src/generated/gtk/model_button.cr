require "./button"

module Gtk
  class ModelButton < Button
    @pointer : Void*
    def initialize(pointer : LibGtk::ModelButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ModelButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def active
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active", gvalue)
      gvalue.boolean
    end

    def centered
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "centered", gvalue)
      gvalue.boolean
    end

    def icon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon", gvalue)
      gvalue
    end

    def iconic
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "iconic", gvalue)
      gvalue.boolean
    end

    def inverted
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "inverted", gvalue)
      gvalue.boolean
    end

    def menu_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "menu_name", gvalue)
      gvalue.string
    end

    def role
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "role", gvalue)
      gvalue.enum
    end

    def text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text", gvalue)
      gvalue.string
    end

    def use_markup
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_markup", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.model_button_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

