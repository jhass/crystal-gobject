module GObject
  class FlagsClass
    include GObject::WrappedType

    def initialize(@g_object_flags_class)
    end

    def to_unsafe
      @g_object_flags_class.not_nil!
    end

  end
end

