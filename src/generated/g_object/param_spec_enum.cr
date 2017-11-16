require "./param_spec"

module GObject
  class ParamSpecEnum < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecEnum*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecEnum*)
    end

  end
end

