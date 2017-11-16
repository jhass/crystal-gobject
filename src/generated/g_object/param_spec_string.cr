require "./param_spec"

module GObject
  class ParamSpecString < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecString*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecString*)
    end

  end
end

