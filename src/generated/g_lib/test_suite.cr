module GLib
  class TestSuite
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::TestSuite*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::TestSuite*)
    end

    def add(test_case)
      LibGLib.test_suite_add(@pointer.as(LibGLib::TestSuite*), test_case.to_unsafe.as(LibGLib::TestCase*))
      nil
    end

    def add_suite(nestedsuite)
      LibGLib.test_suite_add_suite(@pointer.as(LibGLib::TestSuite*), nestedsuite.to_unsafe.as(LibGLib::TestSuite*))
      nil
    end

  end
end

