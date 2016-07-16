module Atk
  module Value
    def current_value(value)
      __return_value = LibAtk.value_get_current_value(to_unsafe.as(LibAtk::Value*), value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def increment
      __return_value = LibAtk.value_get_increment(to_unsafe.as(LibAtk::Value*))
      __return_value
    end

    def maximum_value(value)
      __return_value = LibAtk.value_get_maximum_value(to_unsafe.as(LibAtk::Value*), value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def minimum_increment(value)
      __return_value = LibAtk.value_get_minimum_increment(to_unsafe.as(LibAtk::Value*), value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def minimum_value(value)
      __return_value = LibAtk.value_get_minimum_value(to_unsafe.as(LibAtk::Value*), value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def range
      __return_value = LibAtk.value_get_range(to_unsafe.as(LibAtk::Value*))
      Atk::Range.new(__return_value) if __return_value
    end

    def sub_ranges
      __return_value = LibAtk.value_get_sub_ranges(to_unsafe.as(LibAtk::Value*))
      __return_value
    end

    def value_and_text(value, text)
      __return_value = LibAtk.value_get_value_and_text(to_unsafe.as(LibAtk::Value*), value, text)
      __return_value
    end

    def current_value=(value)
      __return_value = LibAtk.value_set_current_value(to_unsafe.as(LibAtk::Value*), value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def value=(new_value)
      __return_value = LibAtk.value_set_value(to_unsafe.as(LibAtk::Value*), Float64.new(new_value))
      __return_value
    end

    alias ValueChangedSignal = Value, Float64, String ->
    def on_value_changed(&__block : ValueChangedSignal)
      __callback = ->(_arg0 : LibAtk::Value*, _arg1 : LibAtk::Float64*, _arg2 : LibAtk::UInt8**) {
       __return_value = __block.call(Value.new(_arg0), _arg1, (raise "Expected string but got null" unless _arg2; ::String.new(_arg2)))
       __return_value
      }
      connect("value-changed", __callback)
    end

  end
end

