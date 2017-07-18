require "./scale_button"

module Gtk
  class VolumeButton < ScaleButton
    @gtk_volume_button : LibGtk::VolumeButton*?
    def initialize(@gtk_volume_button : LibGtk::VolumeButton*)
    end

    def to_unsafe
      @gtk_volume_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    # Implements Orientable
    def use_symbolic
      __return_value = LibGtk.volume_button_get_use_symbolic(to_unsafe.as(LibGtk::VolumeButton*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.volume_button_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

