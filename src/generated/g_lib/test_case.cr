module GLib
  class TestCase
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::TestCase*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::TestCase*)
    end

  end
end

