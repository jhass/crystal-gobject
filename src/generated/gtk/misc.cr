require "./widget"

module Gtk
  class Misc < Widget
    def initialize(@gtk_misc)
    end

    def to_unsafe
      @gtk_misc.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable




    def alignment(xalign, yalign)
      __return_value = LibGtk.misc_get_alignment((to_unsafe as LibGtk::Misc*), Float32.new(xalign), Float32.new(yalign))
      __return_value
    end

    def padding(xpad, ypad)
      __return_value = LibGtk.misc_get_padding((to_unsafe as LibGtk::Misc*), Int32.new(xpad), Int32.new(ypad))
      __return_value
    end

    def set_alignment(xalign, yalign)
      __return_value = LibGtk.misc_set_alignment((to_unsafe as LibGtk::Misc*), Float32.new(xalign), Float32.new(yalign))
      __return_value
    end

    def set_padding(xpad, ypad)
      __return_value = LibGtk.misc_set_padding((to_unsafe as LibGtk::Misc*), Int32.new(xpad), Int32.new(ypad))
      __return_value
    end

  end
end

