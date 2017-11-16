require "./param_spec"

module GObject
  class ParamSpecValueArray < ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecValueArray*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecValueArray*)
    end

  end
end

