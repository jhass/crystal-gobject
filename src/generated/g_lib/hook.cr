module GLib
  class Hook
    include GObject::WrappedType

    def initialize(@g_lib_hook)
    end

    def to_unsafe
      @g_lib_hook.not_nil!
    end

    def compare_ids(sibling)
      __return_value = LibGLib.hook_compare_ids((to_unsafe as LibGLib::Hook*), (sibling.to_unsafe as LibGLib::Hook*))
      __return_value
    end

    def self.destroy(hook_list, hook_id)
      __return_value = LibGLib.hook_destroy((hook_list.to_unsafe as LibGLib::HookList*), UInt64.new(hook_id))
      __return_value
    end

    def self.destroy_link(hook_list, hook)
      __return_value = LibGLib.hook_destroy_link((hook_list.to_unsafe as LibGLib::HookList*), (hook.to_unsafe as LibGLib::Hook*))
      __return_value
    end

    def self.free(hook_list, hook)
      __return_value = LibGLib.hook_free((hook_list.to_unsafe as LibGLib::HookList*), (hook.to_unsafe as LibGLib::Hook*))
      __return_value
    end

    def self.insert_before(hook_list, sibling, hook)
      __return_value = LibGLib.hook_insert_before((hook_list.to_unsafe as LibGLib::HookList*), (sibling.to_unsafe as LibGLib::Hook*), (hook.to_unsafe as LibGLib::Hook*))
      __return_value
    end

    def self.prepend(hook_list, hook)
      __return_value = LibGLib.hook_prepend((hook_list.to_unsafe as LibGLib::HookList*), (hook.to_unsafe as LibGLib::Hook*))
      __return_value
    end

    def self.unref(hook_list, hook)
      __return_value = LibGLib.hook_unref((hook_list.to_unsafe as LibGLib::HookList*), (hook.to_unsafe as LibGLib::Hook*))
      __return_value
    end

  end
end

