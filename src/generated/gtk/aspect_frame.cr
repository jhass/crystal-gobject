require "./frame"

module Gtk
  class AspectFrame < Frame
    def initialize @gtk_aspect_frame
    end

    def to_unsafe
      @gtk_aspect_frame.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable




    def self.new_internal(label, xalign, yalign, ratio, obey_child)
      __return_value = LibGtk.aspect_frame_new(label && label, Float32.cast(xalign), Float32.cast(yalign), Float32.cast(ratio), Bool.cast(obey_child))
      Gtk::Widget.new(__return_value)
    end

    def set(xalign, yalign, ratio, obey_child)
      __return_value = LibGtk.aspect_frame_set((to_unsafe as LibGtk::AspectFrame*), Float32.cast(xalign), Float32.cast(yalign), Float32.cast(ratio), Bool.cast(obey_child))
      __return_value
    end

  end
end

