require "./dialog"

module Gtk
  class MessageDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::MessageDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MessageDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable

    def image
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "image", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def message_area
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "message_area", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def message_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "message_type", gvalue)
      gvalue.enum
    end

    def secondary_text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_text", gvalue)
      gvalue.string
    end

    def secondary_use_markup
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "secondary_use_markup", gvalue)
      gvalue.boolean
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

    def image
      __return_value = LibGtk.message_dialog_get_image(@pointer.as(LibGtk::MessageDialog*))
      Gtk::Widget.new(__return_value)
    end

    def message_area
      __return_value = LibGtk.message_dialog_get_message_area(@pointer.as(LibGtk::MessageDialog*))
      Gtk::Widget.new(__return_value)
    end

    def image=(image)
      LibGtk.message_dialog_set_image(@pointer.as(LibGtk::MessageDialog*), image.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def markup=(str)
      LibGtk.message_dialog_set_markup(@pointer.as(LibGtk::MessageDialog*), str.to_unsafe)
      nil
    end

  end
end

