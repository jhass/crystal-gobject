require "./param_spec"

module GObject
  class ParamSpecOverride < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecOverride*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecOverride*)
    end

  end
end

