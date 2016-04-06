require "./bin"

module Gtk
  class Revealer < Bin
    def initialize(@gtk_revealer)
    end

    def to_unsafe
      @gtk_revealer.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable




    def self.new_internal
      __return_value = LibGtk.revealer_new
      Gtk::Widget.new(__return_value)
    end

    def child_revealed
      __return_value = LibGtk.revealer_get_child_revealed((to_unsafe as LibGtk::Revealer*))
      __return_value
    end

    def reveal_child
      __return_value = LibGtk.revealer_get_reveal_child((to_unsafe as LibGtk::Revealer*))
      __return_value
    end

    def transition_duration
      __return_value = LibGtk.revealer_get_transition_duration((to_unsafe as LibGtk::Revealer*))
      __return_value
    end

    def transition_type
      __return_value = LibGtk.revealer_get_transition_type((to_unsafe as LibGtk::Revealer*))
      __return_value
    end

    def reveal_child=(reveal_child)
      __return_value = LibGtk.revealer_set_reveal_child((to_unsafe as LibGtk::Revealer*), reveal_child)
      __return_value
    end

    def transition_duration=(duration)
      __return_value = LibGtk.revealer_set_transition_duration((to_unsafe as LibGtk::Revealer*), UInt32.new(duration))
      __return_value
    end

    def transition_type=(transition)
      __return_value = LibGtk.revealer_set_transition_type((to_unsafe as LibGtk::Revealer*), transition)
      __return_value
    end

  end
end

