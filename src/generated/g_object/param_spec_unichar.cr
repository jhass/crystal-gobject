require "./param_spec"

module GObject
  class ParamSpecUnichar < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecUnichar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecUnichar*)
    end

  end
end

