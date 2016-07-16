module GLib
  class Once
    include GObject::WrappedType

    def self.new(status : GLib::OnceStatus|Nil = nil, retval : Void*|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGLib::Once*)).tap do |object|
        object.status = status unless status.nil?
        object.retval = retval unless retval.nil?
      end
    end

    @g_lib_once : LibGLib::Once*?
    def initialize(@g_lib_once : LibGLib::Once*)
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

    def status
      (to_unsafe.value.status)
    end

    def status=(value : GLib::OnceStatus)
      to_unsafe.value.status = value
    end

    def retval
      (to_unsafe.value.retval)
    end

    def retval=(value : Void*)
      to_unsafe.value.retval = value
    end

  end
end

