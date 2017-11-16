module Atk
  class Range
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibAtk::Range*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Range*)
    end

    def self.new(lower_limit, upper_limit, description) : self
      __return_value = LibAtk.range_new(Float64.new(lower_limit), Float64.new(upper_limit), description.to_unsafe)
      cast Atk::Range.new(__return_value)
    end

    def copy
      __return_value = LibAtk.range_copy(@pointer.as(LibAtk::Range*))
      Atk::Range.new(__return_value)
    end

    def free
      LibAtk.range_free(@pointer.as(LibAtk::Range*))
      nil
    end

    def description
      __return_value = LibAtk.range_get_description(@pointer.as(LibAtk::Range*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def lower_limit
      __return_value = LibAtk.range_get_lower_limit(@pointer.as(LibAtk::Range*))
      __return_value
    end

    def upper_limit
      __return_value = LibAtk.range_get_upper_limit(@pointer.as(LibAtk::Range*))
      __return_value
    end

  end
end

