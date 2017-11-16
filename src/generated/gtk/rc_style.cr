module Gtk
  class RcStyle < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::RcStyle*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RcStyle*)
    end

    def self.new : self
      __return_value = LibGtk.rc_style_new
      cast Gtk::RcStyle.new(__return_value)
    end

    def copy
      __return_value = LibGtk.rc_style_copy(@pointer.as(LibGtk::RcStyle*))
      Gtk::RcStyle.new(__return_value)
    end

  end
end

