module GLib
  class TestSuite
    include GObject::WrappedType

    @g_lib_test_suite : LibGLib::TestSuite*?
    def initialize(@g_lib_test_suite : LibGLib::TestSuite*)
    end

    def to_unsafe
      @g_lib_test_suite.not_nil!
    end

    def add(test_case)
      LibGLib.test_suite_add(to_unsafe.as(LibGLib::TestSuite*), test_case.to_unsafe.as(LibGLib::TestCase*))
      nil
    end

    def add_suite(nestedsuite)
      LibGLib.test_suite_add_suite(to_unsafe.as(LibGLib::TestSuite*), nestedsuite.to_unsafe.as(LibGLib::TestSuite*))
      nil
    end

  end
end

