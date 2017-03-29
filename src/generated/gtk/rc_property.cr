module Gtk
  class RcProperty
    include GObject::WrappedType

    def self.new(type_name : UInt32|Nil = nil, property_name : UInt32|Nil = nil, origin : String|Nil = nil, value : GObject::Value|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGtk::RcProperty*)).tap do |object|
        object.type_name = type_name unless type_name.nil?
        object.property_name = property_name unless property_name.nil?
        object.origin = origin unless origin.nil?
        object.value = value unless value.nil?
      end
    end

    @gtk_rc_property : LibGtk::RcProperty*?
    def initialize(@gtk_rc_property : LibGtk::RcProperty*)
    end

    def to_unsafe
      @gtk_rc_property.not_nil!
    end

    def self.parse_border(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_border(pspec.to_unsafe.as(LibGObject::ParamSpec*), gstring.to_unsafe.as(LibGLib::String*), property_value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def self.parse_color(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_color(pspec.to_unsafe.as(LibGObject::ParamSpec*), gstring.to_unsafe.as(LibGLib::String*), property_value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def self.parse_enum(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_enum(pspec.to_unsafe.as(LibGObject::ParamSpec*), gstring.to_unsafe.as(LibGLib::String*), property_value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def self.parse_flags(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_flags(pspec.to_unsafe.as(LibGObject::ParamSpec*), gstring.to_unsafe.as(LibGLib::String*), property_value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def self.parse_requisition(pspec, gstring, property_value)
      __return_value = LibGtk.rc_property_parse_requisition(pspec.to_unsafe.as(LibGObject::ParamSpec*), gstring.to_unsafe.as(LibGLib::String*), property_value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def type_name
      (to_unsafe.as(LibGtk::RcProperty*).value.type_name)
    end

    def type_name=(value : UInt32)
      to_unsafe.as(LibGtk::RcProperty*).value.type_name = UInt32.new(value)
    end

    def property_name
      (to_unsafe.as(LibGtk::RcProperty*).value.property_name)
    end

    def property_name=(value : UInt32)
      to_unsafe.as(LibGtk::RcProperty*).value.property_name = UInt32.new(value)
    end

    def origin
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::RcProperty*).value.origin); ::String.new((to_unsafe.as(LibGtk::RcProperty*).value.origin)))
    end

    def origin=(value : String)
      to_unsafe.as(LibGtk::RcProperty*).value.origin = value.to_unsafe
    end

    def value
      GObject::Value.new((to_unsafe.as(LibGtk::RcProperty*).value.value))
    end

    def value=(value : GObject::Value)
      to_unsafe.as(LibGtk::RcProperty*).value.value = value
    end

  end
end

