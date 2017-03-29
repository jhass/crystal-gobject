module Gst
  class FormatDefinition
    include GObject::WrappedType

    def self.new(value : Gst::Format|Nil = nil, nick : String|Nil = nil, description : String|Nil = nil, quark : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGst::FormatDefinition*)).tap do |object|
        object.value = value unless value.nil?
        object.nick = nick unless nick.nil?
        object.description = description unless description.nil?
        object.quark = quark unless quark.nil?
      end
    end

    @gst_format_definition : LibGst::FormatDefinition*?
    def initialize(@gst_format_definition : LibGst::FormatDefinition*)
    end

    def to_unsafe
      @gst_format_definition.not_nil!
    end

    def value
      (to_unsafe.as(LibGst::FormatDefinition*).value.value)
    end

    def value=(value : Gst::Format)
      to_unsafe.as(LibGst::FormatDefinition*).value.value = value
    end

    def nick
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::FormatDefinition*).value.nick); ::String.new((to_unsafe.as(LibGst::FormatDefinition*).value.nick)))
    end

    def nick=(value : String)
      to_unsafe.as(LibGst::FormatDefinition*).value.nick = value.to_unsafe
    end

    def description
      (raise "Expected string but got null" unless (to_unsafe.as(LibGst::FormatDefinition*).value.description); ::String.new((to_unsafe.as(LibGst::FormatDefinition*).value.description)))
    end

    def description=(value : String)
      to_unsafe.as(LibGst::FormatDefinition*).value.description = value.to_unsafe
    end

    def quark
      (to_unsafe.as(LibGst::FormatDefinition*).value.quark)
    end

    def quark=(value : UInt32)
      to_unsafe.as(LibGst::FormatDefinition*).value.quark = UInt32.new(value)
    end

  end
end

