require "./param_spec"

module GObject
  class ParamSpecParam < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecParam*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecParam*)
    end

  end
end

