module GLib
  class SourceCallbackFuncs
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(24, 0)
      super(ptr.as(LibGLib::SourceCallbackFuncs*))
    end

    @g_lib_source_callback_funcs : LibGLib::SourceCallbackFuncs*?
    def initialize(@g_lib_source_callback_funcs : LibGLib::SourceCallbackFuncs*)
    end

    def to_unsafe
      @g_lib_source_callback_funcs.not_nil!
    end

    def ref
      (to_unsafe.value.ref)
    end

    def unref
      (to_unsafe.value.unref)
    end

    def get
      (to_unsafe.value.get)
    end

  end
end

