require "./bin"

module Gtk
  class Revealer < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::Revealer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Revealer*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def child_revealed
      __return_value = LibGtk.revealer_get_child_revealed(to_unsafe.as(LibGtk::Revealer*))
      __return_value
    end

    def reveal_child
      __return_value = LibGtk.revealer_get_reveal_child(to_unsafe.as(LibGtk::Revealer*))
      __return_value
    end

    def transition_duration
      __return_value = LibGtk.revealer_get_transition_duration(to_unsafe.as(LibGtk::Revealer*))
      __return_value
    end

    def transition_type
      __return_value = LibGtk.revealer_get_transition_type(to_unsafe.as(LibGtk::Revealer*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.revealer_new
      cast Gtk::Widget.new(__return_value)
    end

    def child_revealed
      __return_value = LibGtk.revealer_get_child_revealed(@pointer.as(LibGtk::Revealer*))
      __return_value
    end

    def reveal_child
      __return_value = LibGtk.revealer_get_reveal_child(@pointer.as(LibGtk::Revealer*))
      __return_value
    end

    def transition_duration
      __return_value = LibGtk.revealer_get_transition_duration(@pointer.as(LibGtk::Revealer*))
      __return_value
    end

    def transition_type
      __return_value = LibGtk.revealer_get_transition_type(@pointer.as(LibGtk::Revealer*))
      __return_value
    end

    def reveal_child=(reveal_child)
      LibGtk.revealer_set_reveal_child(@pointer.as(LibGtk::Revealer*), reveal_child)
      nil
    end

    def transition_duration=(duration)
      LibGtk.revealer_set_transition_duration(@pointer.as(LibGtk::Revealer*), UInt32.new(duration))
      nil
    end

    def transition_type=(transition : Gtk::RevealerTransitionType)
      LibGtk.revealer_set_transition_type(@pointer.as(LibGtk::Revealer*), transition)
      nil
    end

  end
end

