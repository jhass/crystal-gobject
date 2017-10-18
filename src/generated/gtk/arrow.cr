require "./misc"

module Gtk
  class Arrow < Misc
    @gtk_arrow : LibGtk::Arrow*?
    def initialize(@gtk_arrow : LibGtk::Arrow*)
    end

    def to_unsafe
      @gtk_arrow.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def arrow_type
      __return_value = LibGtk.arrow_get_arrow_type(to_unsafe.as(LibGtk::Arrow*))
      __return_value
    end

    def shadow_type
      __return_value = LibGtk.arrow_get_shadow_type(to_unsafe.as(LibGtk::Arrow*))
      __return_value
    end

    def self.new(arrow_type : Gtk::ArrowType, shadow_type : Gtk::ShadowType) : self
      __return_value = LibGtk.arrow_new(arrow_type, shadow_type)
      cast Gtk::Widget.new(__return_value)
    end

    def set(arrow_type : Gtk::ArrowType, shadow_type : Gtk::ShadowType)
      LibGtk.arrow_set(to_unsafe.as(LibGtk::Arrow*), arrow_type, shadow_type)
      nil
    end

  end
end

