module Gtk
  class RcStyle < GObject::Object
    def initialize(@gtk_rc_style)
    end

    def to_unsafe
      @gtk_rc_style.not_nil!
    end

    def self.new_internal
      __return_value = LibGtk.rc_style_new
      Gtk::RcStyle.new(__return_value)
    end

    def copy
      __return_value = LibGtk.rc_style_copy((to_unsafe as LibGtk::RcStyle*))
      Gtk::RcStyle.new(__return_value)
    end

  end
end

