require "./widget"

module Gtk
  class Spinner < Widget
    @gtk_spinner : LibGtk::Spinner*?
    def initialize(@gtk_spinner : LibGtk::Spinner*)
    end

    def to_unsafe
      @gtk_spinner.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def active
      __return_value = LibGtk.spinner_get_active(to_unsafe.as(LibGtk::Spinner*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.spinner_new
      cast Gtk::Widget.new(__return_value)
    end

    def start
      LibGtk.spinner_start(to_unsafe.as(LibGtk::Spinner*))
      nil
    end

    def stop
      LibGtk.spinner_stop(to_unsafe.as(LibGtk::Spinner*))
      nil
    end

  end
end

