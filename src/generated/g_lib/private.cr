module GLib
  class Private
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      super(ptr.as(LibGLib::Private*))
    end

    @g_lib_private : LibGLib::Private*?
    def initialize(@g_lib_private : LibGLib::Private*)
    end

    def to_unsafe
      @g_lib_private.not_nil!
    end

    def get
      LibGLib.private_get(to_unsafe.as(LibGLib::Private*))
      nil
    end

    def replace(value)
      LibGLib.private_replace(to_unsafe.as(LibGLib::Private*), value ? value : nil)
      nil
    end

    def set(value)
      LibGLib.private_set(to_unsafe.as(LibGLib::Private*), value ? value : nil)
      nil
    end

    def p
      (to_unsafe.as(LibGLib::Private*).value.p)
    end

    def notify
      (to_unsafe.as(LibGLib::Private*).value.notify)
    end

    def future
      PointerIterator.new((to_unsafe.as(LibGLib::Private*).value.future)) {|__item| __item }
    end

  end
end

