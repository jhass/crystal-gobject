module Gtk
  class RcStyle < GObject::Object
    @gtk_rc_style : LibGtk::RcStyle*?
    def initialize(@gtk_rc_style : LibGtk::RcStyle*)
    end

    def to_unsafe
      @gtk_rc_style.not_nil!
    end

    def self.new : self
      __return_value = LibGtk.rc_style_new
      cast Gtk::RcStyle.new(__return_value)
    end

    def copy
      __return_value = LibGtk.rc_style_copy(to_unsafe.as(LibGtk::RcStyle*))
      Gtk::RcStyle.new(__return_value)
    end

  end
end

