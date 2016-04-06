module Atk
  class Implementor
    include GObject::WrappedType

    def initialize(@atk_implementor)
    end

    def to_unsafe
      @atk_implementor.not_nil!
    end

    def ref_accessible
      __return_value = LibAtk.implementor_ref_accessible((to_unsafe as LibAtk::Implementor*))
      Atk::Object.new(__return_value)
    end

  end
end

