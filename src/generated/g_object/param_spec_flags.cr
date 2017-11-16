require "./param_spec"

module GObject
  class ParamSpecFlags < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecFlags*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecFlags*)
    end

  end
end

