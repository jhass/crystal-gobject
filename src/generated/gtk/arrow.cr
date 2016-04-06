require "./misc"

module Gtk
  class Arrow < Misc
    def initialize(@gtk_arrow)
    end

    def to_unsafe
      @gtk_arrow.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable


    def self.new_internal(arrow_type, shadow_type)
      __return_value = LibGtk.arrow_new(arrow_type, shadow_type)
      Gtk::Widget.new(__return_value)
    end

    def set(arrow_type, shadow_type)
      __return_value = LibGtk.arrow_set((to_unsafe as LibGtk::Arrow*), arrow_type, shadow_type)
      __return_value
    end

  end
end

