require "./widget"

module Gtk
  class Spinner < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::Spinner*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Spinner*)
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
      LibGtk.spinner_start(@pointer.as(LibGtk::Spinner*))
      nil
    end

    def stop
      LibGtk.spinner_stop(@pointer.as(LibGtk::Spinner*))
      nil
    end

  end
end

