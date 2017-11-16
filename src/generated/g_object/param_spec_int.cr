require "./param_spec"

module GObject
  class ParamSpecInt < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecInt*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecInt*)
    end

  end
end

