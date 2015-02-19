module Atk
  module Value
    def current_value(value)
      __return_value = LibAtk.value_get_current_value((to_unsafe as LibAtk::Value*), (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def increment
      __return_value = LibAtk.value_get_increment((to_unsafe as LibAtk::Value*))
      __return_value
    end

    def maximum_value(value)
      __return_value = LibAtk.value_get_maximum_value((to_unsafe as LibAtk::Value*), (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def minimum_increment(value)
      __return_value = LibAtk.value_get_minimum_increment((to_unsafe as LibAtk::Value*), (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def minimum_value(value)
      __return_value = LibAtk.value_get_minimum_value((to_unsafe as LibAtk::Value*), (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def range
      __return_value = LibAtk.value_get_range((to_unsafe as LibAtk::Value*))
      Atk::Range.new(__return_value) if __return_value
    end

    def sub_ranges
      __return_value = LibAtk.value_get_sub_ranges((to_unsafe as LibAtk::Value*))
      __return_value
    end

    def value_and_text(value, text)
      __return_value = LibAtk.value_get_value_and_text((to_unsafe as LibAtk::Value*), Float64.cast(value), text)
      __return_value
    end

    def current_value=(value)
      __return_value = LibAtk.value_set_current_value((to_unsafe as LibAtk::Value*), (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def value=(new_value)
      __return_value = LibAtk.value_set_value((to_unsafe as LibAtk::Value*), Float64.cast(new_value))
      __return_value
    end

  end
end

