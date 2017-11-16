require "./widget"

module Gtk
  class ProgressBar < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::ProgressBar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ProgressBar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def ellipsize
      __return_value = LibGtk.progress_bar_get_ellipsize(to_unsafe.as(LibGtk::ProgressBar*))
      __return_value
    end

    def fraction
      __return_value = LibGtk.progress_bar_get_fraction(to_unsafe.as(LibGtk::ProgressBar*))
      __return_value
    end

    def inverted
      __return_value = LibGtk.progress_bar_get_inverted(to_unsafe.as(LibGtk::ProgressBar*))
      __return_value
    end

    def pulse_step
      __return_value = LibGtk.progress_bar_get_pulse_step(to_unsafe.as(LibGtk::ProgressBar*))
      __return_value
    end

    def show_text
      __return_value = LibGtk.progress_bar_get_show_text(to_unsafe.as(LibGtk::ProgressBar*))
      __return_value
    end

    def text
      __return_value = LibGtk.progress_bar_get_text(to_unsafe.as(LibGtk::ProgressBar*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new : self
      __return_value = LibGtk.progress_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def ellipsize
      __return_value = LibGtk.progress_bar_get_ellipsize(@pointer.as(LibGtk::ProgressBar*))
      __return_value
    end

    def fraction
      __return_value = LibGtk.progress_bar_get_fraction(@pointer.as(LibGtk::ProgressBar*))
      __return_value
    end

    def inverted
      __return_value = LibGtk.progress_bar_get_inverted(@pointer.as(LibGtk::ProgressBar*))
      __return_value
    end

    def pulse_step
      __return_value = LibGtk.progress_bar_get_pulse_step(@pointer.as(LibGtk::ProgressBar*))
      __return_value
    end

    def show_text
      __return_value = LibGtk.progress_bar_get_show_text(@pointer.as(LibGtk::ProgressBar*))
      __return_value
    end

    def text
      __return_value = LibGtk.progress_bar_get_text(@pointer.as(LibGtk::ProgressBar*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def pulse
      LibGtk.progress_bar_pulse(@pointer.as(LibGtk::ProgressBar*))
      nil
    end

    def ellipsize=(mode : Pango::EllipsizeMode)
      LibGtk.progress_bar_set_ellipsize(@pointer.as(LibGtk::ProgressBar*), mode)
      nil
    end

    def fraction=(fraction)
      LibGtk.progress_bar_set_fraction(@pointer.as(LibGtk::ProgressBar*), Float64.new(fraction))
      nil
    end

    def inverted=(inverted)
      LibGtk.progress_bar_set_inverted(@pointer.as(LibGtk::ProgressBar*), inverted)
      nil
    end

    def pulse_step=(fraction)
      LibGtk.progress_bar_set_pulse_step(@pointer.as(LibGtk::ProgressBar*), Float64.new(fraction))
      nil
    end

    def show_text=(show_text)
      LibGtk.progress_bar_set_show_text(@pointer.as(LibGtk::ProgressBar*), show_text)
      nil
    end

    def text=(text)
      LibGtk.progress_bar_set_text(@pointer.as(LibGtk::ProgressBar*), text ? text.to_unsafe : nil)
      nil
    end

  end
end

