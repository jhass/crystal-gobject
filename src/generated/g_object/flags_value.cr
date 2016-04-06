module GObject
  class FlagsValue
    include GObject::WrappedType

    def initialize(@g_object_flags_value)
    end

    def to_unsafe
      @g_object_flags_value.not_nil!
    end

  end
end

