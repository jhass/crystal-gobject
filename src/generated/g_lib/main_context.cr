module GLib
  class MainContext
    include GObject::WrappedType

    def initialize(@g_lib_main_context)
    end

    def to_unsafe
      @g_lib_main_context.not_nil!
    end

    def self.new_internal
      __return_value = LibGLib.main_context_new
      GLib::MainContext.new(__return_value)
    end

    def acquire
      __return_value = LibGLib.main_context_acquire((to_unsafe as LibGLib::MainContext*))
      __return_value
    end

    def add_poll(fd, priority)
      __return_value = LibGLib.main_context_add_poll((to_unsafe as LibGLib::MainContext*), (fd.to_unsafe as LibGLib::PollFD*), Int32.new(priority))
      __return_value
    end

    def check(max_priority, fds, n_fds)
      __return_value = LibGLib.main_context_check((to_unsafe as LibGLib::MainContext*), Int32.new(max_priority), fds, Int32.new(n_fds))
      __return_value
    end

    def dispatch
      __return_value = LibGLib.main_context_dispatch((to_unsafe as LibGLib::MainContext*))
      __return_value
    end

    def find_source_by_funcs_user_data(funcs, user_data)
      __return_value = LibGLib.main_context_find_source_by_funcs_user_data((to_unsafe as LibGLib::MainContext*), (funcs.to_unsafe as LibGLib::SourceFuncs*), user_data)
      GLib::Source.new(__return_value)
    end

    def find_source_by_id(source_id)
      __return_value = LibGLib.main_context_find_source_by_id((to_unsafe as LibGLib::MainContext*), UInt32.new(source_id))
      GLib::Source.new(__return_value)
    end

    def find_source_by_user_data(user_data)
      __return_value = LibGLib.main_context_find_source_by_user_data((to_unsafe as LibGLib::MainContext*), user_data)
      GLib::Source.new(__return_value)
    end

    def invoke_full(priority, function : LibGLib::SourceFunc, data, notify : LibGLib::DestroyNotify?)
      __return_value = LibGLib.main_context_invoke_full((to_unsafe as LibGLib::MainContext*), Int32.new(priority), function, data, notify && notify)
      __return_value
    end

    def owner?
      __return_value = LibGLib.main_context_is_owner((to_unsafe as LibGLib::MainContext*))
      __return_value
    end

    def iteration(may_block)
      __return_value = LibGLib.main_context_iteration((to_unsafe as LibGLib::MainContext*), may_block)
      __return_value
    end

    def pending
      __return_value = LibGLib.main_context_pending((to_unsafe as LibGLib::MainContext*))
      __return_value
    end

    def pop_thread_default
      __return_value = LibGLib.main_context_pop_thread_default((to_unsafe as LibGLib::MainContext*))
      __return_value
    end

    def prepare(priority)
      __return_value = LibGLib.main_context_prepare((to_unsafe as LibGLib::MainContext*), priority)
      __return_value
    end

    def push_thread_default
      __return_value = LibGLib.main_context_push_thread_default((to_unsafe as LibGLib::MainContext*))
      __return_value
    end

    def query(max_priority, timeout, fds, n_fds)
      __return_value = LibGLib.main_context_query((to_unsafe as LibGLib::MainContext*), Int32.new(max_priority), Int32.new(timeout), fds, Int32.new(n_fds))
      __return_value
    end

    def ref
      __return_value = LibGLib.main_context_ref((to_unsafe as LibGLib::MainContext*))
      GLib::MainContext.new(__return_value)
    end

    def release
      __return_value = LibGLib.main_context_release((to_unsafe as LibGLib::MainContext*))
      __return_value
    end

    def remove_poll(fd)
      __return_value = LibGLib.main_context_remove_poll((to_unsafe as LibGLib::MainContext*), (fd.to_unsafe as LibGLib::PollFD*))
      __return_value
    end

    def unref
      __return_value = LibGLib.main_context_unref((to_unsafe as LibGLib::MainContext*))
      __return_value
    end

    def wait(cond, mutex)
      __return_value = LibGLib.main_context_wait((to_unsafe as LibGLib::MainContext*), (cond.to_unsafe as LibGLib::Cond*), (mutex.to_unsafe as LibGLib::Mutex*))
      __return_value
    end

    def wakeup
      __return_value = LibGLib.main_context_wakeup((to_unsafe as LibGLib::MainContext*))
      __return_value
    end

    def self.default
      __return_value = LibGLib.main_context_default
      GLib::MainContext.new(__return_value)
    end

    def self.thread_default
      __return_value = LibGLib.main_context_get_thread_default
      GLib::MainContext.new(__return_value)
    end

    def self.ref_thread_default
      __return_value = LibGLib.main_context_ref_thread_default
      GLib::MainContext.new(__return_value)
    end

  end
end

