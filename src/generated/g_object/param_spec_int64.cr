require "./param_spec"

module GObject
  class ParamSpecInt64 < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecInt64*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecInt64*)
    end

  end
end

