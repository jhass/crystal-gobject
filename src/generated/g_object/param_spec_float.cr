require "./param_spec"

module GObject
  class ParamSpecFloat < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecFloat*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecFloat*)
    end

  end
end

