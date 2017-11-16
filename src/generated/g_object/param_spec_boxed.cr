require "./param_spec"

module GObject
  class ParamSpecBoxed < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecBoxed*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecBoxed*)
    end

  end
end

