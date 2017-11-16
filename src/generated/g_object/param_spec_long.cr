require "./param_spec"

module GObject
  class ParamSpecLong < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecLong*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecLong*)
    end

  end
end

