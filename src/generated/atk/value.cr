module Atk
  module Value
    def current_value(value)
      LibAtk.value_get_current_value(to_unsafe.as(LibAtk::Value*), value)
      nil
    end

    def increment
      __return_value = LibAtk.value_get_increment(to_unsafe.as(LibAtk::Value*))
      __return_value
    end

    def maximum_value(value)
      LibAtk.value_get_maximum_value(to_unsafe.as(LibAtk::Value*), value)
      nil
    end

    def minimum_increment(value)
      LibAtk.value_get_minimum_increment(to_unsafe.as(LibAtk::Value*), value)
      nil
    end

    def minimum_value(value)
      LibAtk.value_get_minimum_value(to_unsafe.as(LibAtk::Value*), value)
      nil
    end

    def range
      __return_value = LibAtk.value_get_range(to_unsafe.as(LibAtk::Value*))
      Atk::Range.new(__return_value) if __return_value
    end

    def sub_ranges
      __return_value = LibAtk.value_get_sub_ranges(to_unsafe.as(LibAtk::Value*))
      GLib::SListIterator(Atk::Range, LibAtk::Range*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def value_and_text(value, text)
      LibAtk.value_get_value_and_text(to_unsafe.as(LibAtk::Value*), value, text)
      nil
    end

    def current_value=(value)
      __return_value = LibAtk.value_set_current_value(to_unsafe.as(LibAtk::Value*), value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def value=(new_value)
      LibAtk.value_set_value(to_unsafe.as(LibAtk::Value*), Float64.new(new_value))
      nil
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

