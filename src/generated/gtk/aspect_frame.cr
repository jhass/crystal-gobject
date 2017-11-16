require "./frame"

module Gtk
  class AspectFrame < Frame
    @pointer : Void*
    def initialize(pointer : LibGtk::AspectFrame*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AspectFrame*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def obey_child
      __return_value = LibGtk.aspect_frame_get_obey_child(to_unsafe.as(LibGtk::AspectFrame*))
      __return_value
    end

    def ratio
      __return_value = LibGtk.aspect_frame_get_ratio(to_unsafe.as(LibGtk::AspectFrame*))
      __return_value
    end

    def xalign
      __return_value = LibGtk.aspect_frame_get_xalign(to_unsafe.as(LibGtk::AspectFrame*))
      __return_value
    end

    def yalign
      __return_value = LibGtk.aspect_frame_get_yalign(to_unsafe.as(LibGtk::AspectFrame*))
      __return_value
    end

    def self.new(label, xalign, yalign, ratio, obey_child) : self
      __return_value = LibGtk.aspect_frame_new(label ? label.to_unsafe : nil, Float32.new(xalign), Float32.new(yalign), Float32.new(ratio), obey_child)
      cast Gtk::Widget.new(__return_value)
    end

    def set(xalign, yalign, ratio, obey_child)
      LibGtk.aspect_frame_set(@pointer.as(LibGtk::AspectFrame*), Float32.new(xalign), Float32.new(yalign), Float32.new(ratio), obey_child)
      nil
    end

  end
end

