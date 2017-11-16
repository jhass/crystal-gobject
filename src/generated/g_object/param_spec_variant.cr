require "./param_spec"

module GObject
  class ParamSpecVariant < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecVariant*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecVariant*)
    end

  end
end

