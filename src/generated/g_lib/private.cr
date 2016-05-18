module GLib
  class Private
    include GObject::WrappedType

    @g_lib_private : LibGLib::Private*?
    def initialize(@g_lib_private : LibGLib::Private*)
    end

    def to_unsafe
      @g_lib_private.not_nil!
    end

    def get
      __return_value = LibGLib.private_get(to_unsafe.as(LibGLib::Private*))
      __return_value if __return_value
    end

    def replace(value)
      __return_value = LibGLib.private_replace(to_unsafe.as(LibGLib::Private*), value && value)
      __return_value
    end

    def set(value)
      __return_value = LibGLib.private_set(to_unsafe.as(LibGLib::Private*), value && value)
      __return_value
    end

  end
end

