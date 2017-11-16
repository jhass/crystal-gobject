require "./param_spec"

module GObject
  class ParamSpecUChar < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecUChar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecUChar*)
    end

  end
end

