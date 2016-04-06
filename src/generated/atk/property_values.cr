module Atk
  class PropertyValues
    include GObject::WrappedType

    def initialize(@atk_property_values)
    end

    def to_unsafe
      @atk_property_values.not_nil!
    end

  end
end

