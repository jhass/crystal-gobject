module GLib
  class Private
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      super(ptr.as(LibGLib::Private*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::Private*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Private*)
    end

    def get
      LibGLib.private_get(@pointer.as(LibGLib::Private*))
      nil
    end

    def replace(value)
      LibGLib.private_replace(@pointer.as(LibGLib::Private*), value ? value : nil)
      nil
    end

    def set(value)
      LibGLib.private_set(@pointer.as(LibGLib::Private*), value ? value : nil)
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

