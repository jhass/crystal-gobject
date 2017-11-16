require "./scale_button"

module Gtk
  class VolumeButton < ScaleButton
    @pointer : Void*
    def initialize(pointer : LibGtk::VolumeButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::VolumeButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    # Implements Orientable
    def use_symbolic
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_symbolic", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.volume_button_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

