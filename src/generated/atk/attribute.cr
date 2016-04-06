module Atk
  class Attribute
    include GObject::WrappedType

    def initialize(@atk_attribute)
    end

    def to_unsafe
      @atk_attribute.not_nil!
    end

    def self.set_free(attrib_set)
      __return_value = LibAtk.attribute_set_free(attrib_set)
      __return_value
    end

  end
end

