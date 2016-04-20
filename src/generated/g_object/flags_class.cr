module GObject
  class FlagsClass
    include GObject::WrappedType

    @g_object_flags_class : LibGObject::FlagsClass*?
    def initialize(@g_object_flags_class : LibGObject::FlagsClass*)
    end

    def to_unsafe
      @g_object_flags_class.not_nil!
    end

  end
end

