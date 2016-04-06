module GLib
  class TestCase
    include GObject::WrappedType

    def initialize(@g_lib_test_case)
    end

    def to_unsafe
      @g_lib_test_case.not_nil!
    end

  end
end

