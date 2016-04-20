module GLib
  class TestConfig
    include GObject::WrappedType

    @g_lib_test_config : LibGLib::TestConfig*?
    def initialize(@g_lib_test_config : LibGLib::TestConfig*)
    end

    def to_unsafe
      @g_lib_test_config.not_nil!
    end

  end
end

