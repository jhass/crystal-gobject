require "./param_spec"

module GObject
  class ParamSpecObject < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecObject*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecObject*)
    end

  end
end

