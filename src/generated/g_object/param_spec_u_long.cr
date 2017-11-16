require "./param_spec"

module GObject
  class ParamSpecULong < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecULong*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecULong*)
    end

  end
end

