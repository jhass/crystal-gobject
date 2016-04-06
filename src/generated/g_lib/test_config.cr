module GLib
  class TestConfig
    include GObject::WrappedType

    def initialize(@g_lib_test_config)
    end

    def to_unsafe
      @g_lib_test_config.not_nil!
    end

  end
end

