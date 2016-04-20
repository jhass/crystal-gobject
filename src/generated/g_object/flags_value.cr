module GObject
  class FlagsValue
    include GObject::WrappedType

    @g_object_flags_value : LibGObject::FlagsValue*?
    def initialize(@g_object_flags_value : LibGObject::FlagsValue*)
    end

    def to_unsafe
      @g_object_flags_value.not_nil!
    end

  end
end

