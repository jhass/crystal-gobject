module GLib
  class HookList
    include GObject::WrappedType

    def self.new(seq_id : UInt64|Nil = nil, hook_size : UInt32|Nil = nil, is_setup : UInt32|Nil = nil, hooks : GLib::Hook|Nil = nil, dummy3 : Void*|Nil = nil, finalize_hook : GLib::HookFinalizeFunc|Nil = nil, dummy : Array(Void*)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGLib::HookList*)).tap do |object|
        object.seq_id = seq_id unless seq_id.nil?
        object.hook_size = hook_size unless hook_size.nil?
        object.is_setup = is_setup unless is_setup.nil?
        object.hooks = hooks unless hooks.nil?
        object.dummy3 = dummy3 unless dummy3.nil?
        object.finalize_hook = finalize_hook unless finalize_hook.nil?
        object.dummy = dummy unless dummy.nil?
      end
    end

    @g_lib_hook_list : LibGLib::HookList*?
    def initialize(@g_lib_hook_list : LibGLib::HookList*)
    end

    def to_unsafe
      @g_lib_hook_list.not_nil!
    end

    def clear
      __return_value = LibGLib.hook_list_clear(to_unsafe.as(LibGLib::HookList*))
      __return_value
    end

    def init(hook_size)
      __return_value = LibGLib.hook_list_init(to_unsafe.as(LibGLib::HookList*), UInt32.new(hook_size))
      __return_value
    end

    def invoke(may_recurse)
      __return_value = LibGLib.hook_list_invoke(to_unsafe.as(LibGLib::HookList*), may_recurse)
      __return_value
    end

    def invoke_check(may_recurse)
      __return_value = LibGLib.hook_list_invoke_check(to_unsafe.as(LibGLib::HookList*), may_recurse)
      __return_value
    end

    def seq_id
      (to_unsafe.as(LibGLib::HookList*).value.seq_id)
    end

    def seq_id=(value : UInt64)
      to_unsafe.as(LibGLib::HookList*).value.seq_id = UInt64.new(value)
    end

    def hook_size
      (to_unsafe.as(LibGLib::HookList*).value.hook_size)
    end

    def hook_size=(value : UInt32)
      to_unsafe.as(LibGLib::HookList*).value.hook_size = UInt32.new(value)
    end

    def is_setup
      (to_unsafe.as(LibGLib::HookList*).value.is_setup)
    end

    def is_setup=(value : UInt32)
      to_unsafe.as(LibGLib::HookList*).value.is_setup = UInt32.new(value)
    end

    def hooks
      GLib::Hook.new((to_unsafe.as(LibGLib::HookList*).value.hooks))
    end

    def hooks=(value : GLib::Hook)
      to_unsafe.as(LibGLib::HookList*).value.hooks = value.to_unsafe.as(LibGLib::Hook*)
    end

    def dummy3
      (to_unsafe.as(LibGLib::HookList*).value.dummy3)
    end

    def dummy3=(value : Void*)
      to_unsafe.as(LibGLib::HookList*).value.dummy3 = value
    end

    def finalize_hook
      (to_unsafe.as(LibGLib::HookList*).value.finalize_hook)
    end

    def finalize_hook=(value : GLib::HookFinalizeFunc)
      to_unsafe.as(LibGLib::HookList*).value.finalize_hook = value
    end

    def dummy
      PointerIterator.new((to_unsafe.as(LibGLib::HookList*).value.dummy)) {|__item| __item }
    end

    def dummy=(value : Array(Void*))
      to_unsafe.as(LibGLib::HookList*).value.dummy = value
    end

  end
end

