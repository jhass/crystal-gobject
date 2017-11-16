module Atk
  class Implementor
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibAtk::Implementor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Implementor*)
    end

    def ref_accessible
      __return_value = LibAtk.implementor_ref_accessible(@pointer.as(LibAtk::Implementor*))
      Atk::Object.new(__return_value)
    end

  end
end

