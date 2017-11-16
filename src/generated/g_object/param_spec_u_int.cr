require "./param_spec"

module GObject
  class ParamSpecUInt < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecUInt*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecUInt*)
    end

  end
end

