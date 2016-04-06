require "./bin"

module Gtk
  class Alignment < Bin
    def initialize(@gtk_alignment)
    end

    def to_unsafe
      @gtk_alignment.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable








    def self.new_internal(xalign, yalign, xscale, yscale)
      __return_value = LibGtk.alignment_new(Float32.new(xalign), Float32.new(yalign), Float32.new(xscale), Float32.new(yscale))
      Gtk::Widget.new(__return_value)
    end

    def padding(padding_top, padding_bottom, padding_left, padding_right)
      __return_value = LibGtk.alignment_get_padding((to_unsafe as LibGtk::Alignment*), UInt32.new(padding_top), UInt32.new(padding_bottom), UInt32.new(padding_left), UInt32.new(padding_right))
      __return_value
    end

    def set(xalign, yalign, xscale, yscale)
      __return_value = LibGtk.alignment_set((to_unsafe as LibGtk::Alignment*), Float32.new(xalign), Float32.new(yalign), Float32.new(xscale), Float32.new(yscale))
      __return_value
    end

    def set_padding(padding_top, padding_bottom, padding_left, padding_right)
      __return_value = LibGtk.alignment_set_padding((to_unsafe as LibGtk::Alignment*), UInt32.new(padding_top), UInt32.new(padding_bottom), UInt32.new(padding_left), UInt32.new(padding_right))
      __return_value
    end

  end
end

