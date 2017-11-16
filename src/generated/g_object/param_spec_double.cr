require "./param_spec"

module GObject
  class ParamSpecDouble < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecDouble*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecDouble*)
    end

  end
end

