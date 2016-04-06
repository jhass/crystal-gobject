module GLib
  class ScannerConfig
    include GObject::WrappedType

    def initialize(@g_lib_scanner_config)
    end

    def to_unsafe
      @g_lib_scanner_config.not_nil!
    end

  end
end

