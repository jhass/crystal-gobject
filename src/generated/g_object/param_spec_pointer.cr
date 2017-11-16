require "./param_spec"

module GObject
  class ParamSpecPointer < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecPointer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecPointer*)
    end

  end
end

