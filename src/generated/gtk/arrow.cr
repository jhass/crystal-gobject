require "./misc"

module Gtk
  class Arrow < Misc
    @pointer : Void*
    def initialize(pointer : LibGtk::Arrow*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Arrow*)
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
      LibGtk.arrow_set(@pointer.as(LibGtk::Arrow*), arrow_type, shadow_type)
      nil
    end

  end
end

