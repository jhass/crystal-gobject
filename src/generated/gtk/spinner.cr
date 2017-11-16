require "./widget"

module Gtk
  class Spinner < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::Spinner*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Spinner*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def active
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.spinner_new
      cast Gtk::Widget.new(__return_value)
    end

    def start
      LibGtk.spinner_start(@pointer.as(LibGtk::Spinner*))
      nil
    end

    def stop
      LibGtk.spinner_stop(@pointer.as(LibGtk::Spinner*))
      nil
    end

  end
end

