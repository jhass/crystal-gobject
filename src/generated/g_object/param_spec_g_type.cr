require "./param_spec"

module GObject
  class ParamSpecGType < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecGType*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecGType*)
    end

  end
end

