module Gtk
  class RcProperty
    include GObject::WrappedType

    def initialize(@gtk_rc_property)
    end

    def to_unsafe
      @gtk_rc_property.not_nil!
    end

    def self.parse_border(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_border((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def self.parse_color(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_color((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def self.parse_enum(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_enum((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def self.parse_flags(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_flags((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def self.parse_requisition(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_requisition((pspec.to_unsafe as LibGObject::ParamSpec*), (gstring.to_unsafe as LibGLib::String*), (property_value.to_unsafe as LibGObject::Value*))
      __return_value
    end

  end
end

