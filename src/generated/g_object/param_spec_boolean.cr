require "./param_spec"

module GObject
  class ParamSpecBoolean < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecBoolean*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecBoolean*)
    end

  end
end

