module GLib
  class MainContext
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::MainContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::MainContext*)
    end

    def self.new : self
      __return_value = LibGLib.main_context_new
      cast GLib::MainContext.new(__return_value)
    end

    def acquire
      __return_value = LibGLib.main_context_acquire(@pointer.as(LibGLib::MainContext*))
      __return_value
    end

    def add_poll(fd, priority)
      LibGLib.main_context_add_poll(@pointer.as(LibGLib::MainContext*), fd.to_unsafe.as(LibGLib::PollFD*), Int32.new(priority))
      nil
    end

    def check(max_priority, fds, n_fds)
      __return_value = LibGLib.main_context_check(@pointer.as(LibGLib::MainContext*), Int32.new(max_priority), fds, Int32.new(n_fds))
      __return_value
    end

    def dispatch
      LibGLib.main_context_dispatch(@pointer.as(LibGLib::MainContext*))
      nil
    end

    def find_source_by_funcs_user_data(funcs, user_data)
      __return_value = LibGLib.main_context_find_source_by_funcs_user_data(@pointer.as(LibGLib::MainContext*), funcs.to_unsafe.as(LibGLib::SourceFuncs*), user_data ? user_data : nil)
      GLib::Source.new(__return_value)
    end

    def find_source_by_id(source_id)
      __return_value = LibGLib.main_context_find_source_by_id(@pointer.as(LibGLib::MainContext*), UInt32.new(source_id))
      GLib::Source.new(__return_value)
    end

    def find_source_by_user_data(user_data)
      __return_value = LibGLib.main_context_find_source_by_user_data(@pointer.as(LibGLib::MainContext*), user_data ? user_data : nil)
      GLib::Source.new(__return_value)
    end

    def invoke_full(priority, function, data, notify)
      LibGLib.main_context_invoke_full(@pointer.as(LibGLib::MainContext*), Int32.new(priority), function, data ? data : nil, notify ? notify : nil)
      nil
    end

    def owner?
      __return_value = LibGLib.main_context_is_owner(@pointer.as(LibGLib::MainContext*))
      __return_value
    end

    def iteration(may_block)
      __return_value = LibGLib.main_context_iteration(@pointer.as(LibGLib::MainContext*), may_block)
      __return_value
    end

    def pending
      __return_value = LibGLib.main_context_pending(@pointer.as(LibGLib::MainContext*))
      __return_value
    end

    def pop_thread_default
      LibGLib.main_context_pop_thread_default(@pointer.as(LibGLib::MainContext*))
      nil
    end

    def prepare(priority)
      __return_value = LibGLib.main_context_prepare(@pointer.as(LibGLib::MainContext*), priority)
      __return_value
    end

    def push_thread_default
      LibGLib.main_context_push_thread_default(@pointer.as(LibGLib::MainContext*))
      nil
    end

    def query(max_priority, timeout, fds, n_fds)
      __return_value = LibGLib.main_context_query(@pointer.as(LibGLib::MainContext*), Int32.new(max_priority), timeout, fds, Int32.new(n_fds))
      __return_value
    end

    def ref
      __return_value = LibGLib.main_context_ref(@pointer.as(LibGLib::MainContext*))
      GLib::MainContext.new(__return_value)
    end

    def release
      LibGLib.main_context_release(@pointer.as(LibGLib::MainContext*))
      nil
    end

    def remove_poll(fd)
      LibGLib.main_context_remove_poll(@pointer.as(LibGLib::MainContext*), fd.to_unsafe.as(LibGLib::PollFD*))
      nil
    end

    def unref
      LibGLib.main_context_unref(@pointer.as(LibGLib::MainContext*))
      nil
    end

    def wait(cond, mutex)
      __return_value = LibGLib.main_context_wait(@pointer.as(LibGLib::MainContext*), cond.to_unsafe.as(LibGLib::Cond*), mutex.to_unsafe.as(LibGLib::Mutex*))
      __return_value
    end

    def wakeup
      LibGLib.main_context_wakeup(@pointer.as(LibGLib::MainContext*))
      nil
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

