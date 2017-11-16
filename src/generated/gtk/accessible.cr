module Gtk
  class Accessible < Atk::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::Accessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Accessible*)
    end

    def widget
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "widget", gvalue)
      Gtk::Widget.cast(gvalue.object)
    end

    def connect_widget_destroyed
      LibGtk.accessible_connect_widget_destroyed(@pointer.as(LibGtk::Accessible*))
      nil
    end

    def widget
      __return_value = LibGtk.accessible_get_widget(@pointer.as(LibGtk::Accessible*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def widget=(widget)
      LibGtk.accessible_set_widget(@pointer.as(LibGtk::Accessible*), widget ? widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

  end
end

