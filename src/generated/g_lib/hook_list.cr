module GLib
  class HookList
    include GObject::WrappedType

    def initialize(@g_lib_hook_list)
    end

    def to_unsafe
      @g_lib_hook_list.not_nil!
    end

    def clear
      __return_value = LibGLib.hook_list_clear((to_unsafe as LibGLib::HookList*))
      __return_value
    end

    def init(hook_size)
      __return_value = LibGLib.hook_list_init((to_unsafe as LibGLib::HookList*), UInt32.new(hook_size))
      __return_value
    end

    def invoke(may_recurse)
      __return_value = LibGLib.hook_list_invoke((to_unsafe as LibGLib::HookList*), may_recurse)
      __return_value
    end

    def invoke_check(may_recurse)
      __return_value = LibGLib.hook_list_invoke_check((to_unsafe as LibGLib::HookList*), may_recurse)
      __return_value
    end

  end
end

