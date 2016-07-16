module GLib
  class SourceFuncs
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(48, 0)
      super(ptr.as(LibGLib::SourceFuncs*))
    end

    @g_lib_source_funcs : LibGLib::SourceFuncs*?
    def initialize(@g_lib_source_funcs : LibGLib::SourceFuncs*)
    end

    def to_unsafe
      @g_lib_source_funcs.not_nil!.as(Void*)
    end

    def prepare
      (to_unsafe.value.prepare)
    end

    def check
      (to_unsafe.value.check)
    end

    def dispatch
      (to_unsafe.value.dispatch)
    end

    def finalize
      (to_unsafe.value.finalize)
    end

    def closure_callback
      (to_unsafe.value.closure_callback)
    end

    def closure_marshal
      (to_unsafe.value.closure_marshal)
    end

  end
end

