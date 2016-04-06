module GLib
  class Once
    include GObject::WrappedType

    def initialize(@g_lib_once)
    end

    def to_unsafe
      @g_lib_once.not_nil!
    end

    def self.init_enter(location)
      __return_value = LibGLib.once_init_enter(location)
      __return_value
    end

    def self.init_leave(location, result)
      __return_value = LibGLib.once_init_leave(location, UInt64.new(result))
      __return_value
    end

  end
end

