module GLib
  class PatternSpec
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGLib::PatternSpec*))
    end

    @g_lib_pattern_spec : LibGLib::PatternSpec*?
    def initialize(@g_lib_pattern_spec : LibGLib::PatternSpec*)
    end

    def to_unsafe
      @g_lib_pattern_spec.not_nil!
    end

    def equal(pspec2)
      __return_value = LibGLib.pattern_spec_equal(to_unsafe.as(LibGLib::PatternSpec*), pspec2.to_unsafe.as(LibGLib::PatternSpec*))
      __return_value
    end

    def free
      __return_value = LibGLib.pattern_spec_free(to_unsafe.as(LibGLib::PatternSpec*))
      __return_value
    end

  end
end

