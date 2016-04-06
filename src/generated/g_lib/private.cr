module GLib
  class Private
    include GObject::WrappedType

    def initialize(@g_lib_private)
    end

    def to_unsafe
      @g_lib_private.not_nil!
    end

    def replace(value)
      __return_value = LibGLib.private_replace((to_unsafe as LibGLib::Private*), value)
      __return_value
    end

    def set(value)
      __return_value = LibGLib.private_set((to_unsafe as LibGLib::Private*), value)
      __return_value
    end

  end
end

