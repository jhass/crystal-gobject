require "./param_spec"

module GObject
  class ParamSpecUInt64 < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecUInt64*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecUInt64*)
    end

  end
end

