module GLib
  class ScannerConfig
    include GObject::WrappedType

    @g_lib_scanner_config : LibGLib::ScannerConfig*?
    def initialize(@g_lib_scanner_config : LibGLib::ScannerConfig*)
    end

    def to_unsafe
      @g_lib_scanner_config.not_nil!
    end

  end
end

