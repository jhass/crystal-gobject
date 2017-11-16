module GLib
  class PatternSpec
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::PatternSpec*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::PatternSpec*)
    end

    def equal(pspec2)
      __return_value = LibGLib.pattern_spec_equal(@pointer.as(LibGLib::PatternSpec*), pspec2.to_unsafe.as(LibGLib::PatternSpec*))
      __return_value
    end

    def free
      LibGLib.pattern_spec_free(@pointer.as(LibGLib::PatternSpec*))
      nil
    end

  end
end

