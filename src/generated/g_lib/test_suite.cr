module GLib
  class TestSuite
    include GObject::WrappedType

    def initialize(@g_lib_test_suite)
    end

    def to_unsafe
      @g_lib_test_suite.not_nil!
    end

    def add(test_case)
      __return_value = LibGLib.test_suite_add((to_unsafe as LibGLib::TestSuite*), (test_case.to_unsafe as LibGLib::TestCase*))
      __return_value
    end

    def add_suite(nestedsuite)
      __return_value = LibGLib.test_suite_add_suite((to_unsafe as LibGLib::TestSuite*), (nestedsuite.to_unsafe as LibGLib::TestSuite*))
      __return_value
    end

  end
end

