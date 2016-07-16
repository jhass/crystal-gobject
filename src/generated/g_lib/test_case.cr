module GLib
  class TestCase
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGLib::TestCase*))
    end

    @g_lib_test_case : LibGLib::TestCase*?
    def initialize(@g_lib_test_case : LibGLib::TestCase*)
    end

    def to_unsafe
      @g_lib_test_case.not_nil!.as(Void*)
    end

  end
end

