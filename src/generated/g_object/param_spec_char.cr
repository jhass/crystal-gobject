require "./param_spec"

module GObject
  class ParamSpecChar < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecChar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecChar*)
    end

  end
end

