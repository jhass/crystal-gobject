require "./widget"

module Gtk
  class ProgressBar < Widget
    def initialize(@gtk_progress_bar)
    end

    def to_unsafe
      @gtk_progress_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable






    def self.new_internal
      __return_value = LibGtk.progress_bar_new
      Gtk::Widget.new(__return_value)
    end

    def ellipsize
      __return_value = LibGtk.progress_bar_get_ellipsize((to_unsafe as LibGtk::ProgressBar*))
      __return_value
    end

    def fraction
      __return_value = LibGtk.progress_bar_get_fraction((to_unsafe as LibGtk::ProgressBar*))
      __return_value
    end

    def inverted
      __return_value = LibGtk.progress_bar_get_inverted((to_unsafe as LibGtk::ProgressBar*))
      __return_value
    end

    def pulse_step
      __return_value = LibGtk.progress_bar_get_pulse_step((to_unsafe as LibGtk::ProgressBar*))
      __return_value
    end

    def show_text
      __return_value = LibGtk.progress_bar_get_show_text((to_unsafe as LibGtk::ProgressBar*))
      __return_value
    end

    def text
      __return_value = LibGtk.progress_bar_get_text((to_unsafe as LibGtk::ProgressBar*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def pulse
      __return_value = LibGtk.progress_bar_pulse((to_unsafe as LibGtk::ProgressBar*))
      __return_value
    end

    def ellipsize=(mode)
      __return_value = LibGtk.progress_bar_set_ellipsize((to_unsafe as LibGtk::ProgressBar*), mode)
      __return_value
    end

    def fraction=(fraction)
      __return_value = LibGtk.progress_bar_set_fraction((to_unsafe as LibGtk::ProgressBar*), Float64.new(fraction))
      __return_value
    end

    def inverted=(inverted)
      __return_value = LibGtk.progress_bar_set_inverted((to_unsafe as LibGtk::ProgressBar*), inverted)
      __return_value
    end

    def pulse_step=(fraction)
      __return_value = LibGtk.progress_bar_set_pulse_step((to_unsafe as LibGtk::ProgressBar*), Float64.new(fraction))
      __return_value
    end

    def show_text=(show_text)
      __return_value = LibGtk.progress_bar_set_show_text((to_unsafe as LibGtk::ProgressBar*), show_text)
      __return_value
    end

    def text=(text)
      __return_value = LibGtk.progress_bar_set_text((to_unsafe as LibGtk::ProgressBar*), text && text)
      __return_value
    end

  end
end

