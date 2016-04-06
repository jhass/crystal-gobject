module Atk
  class Range
    include GObject::WrappedType

    def initialize(@atk_range)
    end

    def to_unsafe
      @atk_range.not_nil!
    end

    def self.new_internal(lower_limit, upper_limit, description)
      __return_value = LibAtk.range_new(Float64.new(lower_limit), Float64.new(upper_limit), description)
      Atk::Range.new(__return_value)
    end

    def copy
      __return_value = LibAtk.range_copy((to_unsafe as LibAtk::Range*))
      Atk::Range.new(__return_value)
    end

    def free
      __return_value = LibAtk.range_free((to_unsafe as LibAtk::Range*))
      __return_value
    end

    def description
      __return_value = LibAtk.range_get_description((to_unsafe as LibAtk::Range*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def lower_limit
      __return_value = LibAtk.range_get_lower_limit((to_unsafe as LibAtk::Range*))
      __return_value
    end

    def upper_limit
      __return_value = LibAtk.range_get_upper_limit((to_unsafe as LibAtk::Range*))
      __return_value
    end

  end
end

