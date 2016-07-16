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
      @g_lib_source_callback_funcs.not_nil!.as(Void*)
    end

    def ref
      (to_unsafe.as(LibGLib::SourceCallbackFuncs*).value.ref)
    end

    def unref
      (to_unsafe.as(LibGLib::SourceCallbackFuncs*).value.unref)
    end

    def get
      (to_unsafe.as(LibGLib::SourceCallbackFuncs*).value.get)
    end

  end
end

