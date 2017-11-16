require "./object"

module Gst
  class Tracer < Object
    @pointer : Void*
    def initialize(pointer : LibGst::Tracer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Tracer*)
    end

    def params
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "params", gvalue)
      gvalue.string
    end

  end
end

