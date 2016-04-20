module Atk
  class PropertyValues
    include GObject::WrappedType

    @atk_property_values : LibAtk::PropertyValues*?
    def initialize(@atk_property_values : LibAtk::PropertyValues*)
    end

    def to_unsafe
      @atk_property_values.not_nil!
    end

  end
end

