require "./widget"

module Gtk
  class Misc < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::Misc*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Misc*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def xalign
      __return_value = LibGtk.misc_get_xalign(to_unsafe.as(LibGtk::Misc*))
      __return_value
    end

    def xpad
      __return_value = LibGtk.misc_get_xpad(to_unsafe.as(LibGtk::Misc*))
      __return_value
    end

    def yalign
      __return_value = LibGtk.misc_get_yalign(to_unsafe.as(LibGtk::Misc*))
      __return_value
    end

    def ypad
      __return_value = LibGtk.misc_get_ypad(to_unsafe.as(LibGtk::Misc*))
      __return_value
    end

    def alignment(xalign, yalign)
      LibGtk.misc_get_alignment(@pointer.as(LibGtk::Misc*), xalign, yalign)
      nil
    end

    def padding(xpad, ypad)
      LibGtk.misc_get_padding(@pointer.as(LibGtk::Misc*), xpad, ypad)
      nil
    end

    def set_alignment(xalign, yalign)
      LibGtk.misc_set_alignment(@pointer.as(LibGtk::Misc*), Float32.new(xalign), Float32.new(yalign))
      nil
    end

    def set_padding(xpad, ypad)
      LibGtk.misc_set_padding(@pointer.as(LibGtk::Misc*), Int32.new(xpad), Int32.new(ypad))
      nil
    end

  end
end

