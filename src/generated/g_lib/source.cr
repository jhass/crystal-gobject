module GLib
  class Source
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(96, 0u8)
      super(ptr.as(LibGLib::Source*))
    end

    @g_lib_source : LibGLib::Source*?
    def initialize(@g_lib_source : LibGLib::Source*)
    end

    def to_unsafe
      @g_lib_source.not_nil!.as(Void*)
    end

    def self.new(source_funcs, struct_size) : self
      __return_value = LibGLib.source_new(source_funcs.to_unsafe.as(LibGLib::SourceFuncs*), UInt32.new(struct_size))
      cast GLib::Source.new(__return_value)
    end

    def add_child_source(child_source)
      __return_value = LibGLib.source_add_child_source(to_unsafe.as(LibGLib::Source*), child_source.to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def add_poll(fd)
      __return_value = LibGLib.source_add_poll(to_unsafe.as(LibGLib::Source*), fd.to_unsafe.as(LibGLib::PollFD*))
      __return_value
    end

    def add_unix_fd(fd, events : GLib::IOCondition)
      __return_value = LibGLib.source_add_unix_fd(to_unsafe.as(LibGLib::Source*), Int32.new(fd), events)
      __return_value
    end

    def attach(context)
      __return_value = LibGLib.source_attach(to_unsafe.as(LibGLib::Source*), context && context.to_unsafe.as(LibGLib::MainContext*))
      __return_value
    end

    def destroy
      __return_value = LibGLib.source_destroy(to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def can_recurse
      __return_value = LibGLib.source_get_can_recurse(to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def context
      __return_value = LibGLib.source_get_context(to_unsafe.as(LibGLib::Source*))
      GLib::MainContext.new(__return_value) if __return_value
    end

    def current_time(timeval)
      __return_value = LibGLib.source_get_current_time(to_unsafe.as(LibGLib::Source*), timeval.to_unsafe.as(LibGLib::TimeVal*))
      __return_value
    end

    def id
      __return_value = LibGLib.source_get_id(to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def name
      __return_value = LibGLib.source_get_name(to_unsafe.as(LibGLib::Source*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def priority
      __return_value = LibGLib.source_get_priority(to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def ready_time
      __return_value = LibGLib.source_get_ready_time(to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def time
      __return_value = LibGLib.source_get_time(to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def destroyed?
      __return_value = LibGLib.source_is_destroyed(to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def modify_unix_fd(tag, new_events : GLib::IOCondition)
      __return_value = LibGLib.source_modify_unix_fd(to_unsafe.as(LibGLib::Source*), tag, new_events)
      __return_value
    end

    def query_unix_fd(tag)
      __return_value = LibGLib.source_query_unix_fd(to_unsafe.as(LibGLib::Source*), tag)
      __return_value
    end

    def ref
      __return_value = LibGLib.source_ref(to_unsafe.as(LibGLib::Source*))
      GLib::Source.new(__return_value)
    end

    def remove_child_source(child_source)
      __return_value = LibGLib.source_remove_child_source(to_unsafe.as(LibGLib::Source*), child_source.to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def remove_poll(fd)
      __return_value = LibGLib.source_remove_poll(to_unsafe.as(LibGLib::Source*), fd.to_unsafe.as(LibGLib::PollFD*))
      __return_value
    end

    def remove_unix_fd(tag)
      __return_value = LibGLib.source_remove_unix_fd(to_unsafe.as(LibGLib::Source*), tag)
      __return_value
    end

    def set_callback(func, data, notify)
      __return_value = LibGLib.source_set_callback(to_unsafe.as(LibGLib::Source*), func, data && data, notify && notify)
      __return_value
    end

    def set_callback_indirect(callback_data, callback_funcs)
      __return_value = LibGLib.source_set_callback_indirect(to_unsafe.as(LibGLib::Source*), callback_data && callback_data, callback_funcs.to_unsafe.as(LibGLib::SourceCallbackFuncs*))
      __return_value
    end

    def can_recurse=(can_recurse)
      __return_value = LibGLib.source_set_can_recurse(to_unsafe.as(LibGLib::Source*), can_recurse)
      __return_value
    end

    def funcs=(funcs)
      __return_value = LibGLib.source_set_funcs(to_unsafe.as(LibGLib::Source*), funcs.to_unsafe.as(LibGLib::SourceFuncs*))
      __return_value
    end

    def name=(name)
      __return_value = LibGLib.source_set_name(to_unsafe.as(LibGLib::Source*), name.to_unsafe)
      __return_value
    end

    def priority=(priority)
      __return_value = LibGLib.source_set_priority(to_unsafe.as(LibGLib::Source*), Int32.new(priority))
      __return_value
    end

    def ready_time=(ready_time)
      __return_value = LibGLib.source_set_ready_time(to_unsafe.as(LibGLib::Source*), Int64.new(ready_time))
      __return_value
    end

    def unref
      __return_value = LibGLib.source_unref(to_unsafe.as(LibGLib::Source*))
      __return_value
    end

    def self.remove(tag)
      __return_value = LibGLib.source_remove(UInt32.new(tag))
      __return_value
    end

    def self.remove_by_funcs_user_data(funcs, user_data)
      __return_value = LibGLib.source_remove_by_funcs_user_data(funcs.to_unsafe.as(LibGLib::SourceFuncs*), user_data && user_data)
      __return_value
    end

    def self.remove_by_user_data(user_data)
      __return_value = LibGLib.source_remove_by_user_data(user_data && user_data)
      __return_value
    end

    def self.name_by_id=(tag, name)
      __return_value = LibGLib.source_set_name_by_id(UInt32.new(tag), name.to_unsafe)
      __return_value
    end

    def callback_data
      (to_unsafe.as(LibGLib::Source*).value.callback_data)
    end

    def callback_funcs
      GLib::SourceCallbackFuncs.new((to_unsafe.as(LibGLib::Source*).value.callback_funcs))
    end

    def source_funcs
      GLib::SourceFuncs.new((to_unsafe.as(LibGLib::Source*).value.source_funcs))
    end

    def ref_count
      (to_unsafe.as(LibGLib::Source*).value.ref_count)
    end

    def context
      GLib::MainContext.new((to_unsafe.as(LibGLib::Source*).value.context))
    end

    def priority
      (to_unsafe.as(LibGLib::Source*).value.priority)
    end

    def flags
      (to_unsafe.as(LibGLib::Source*).value.flags)
    end

    def source_id
      (to_unsafe.as(LibGLib::Source*).value.source_id)
    end

    def poll_fds
      GLib::SListIterator(Void*, Void**).new(GLib::SList.new((to_unsafe.as(LibGLib::Source*).value.poll_fds).as(LibGLib::SList*)))
    end

    def prev
      GLib::Source.new((to_unsafe.as(LibGLib::Source*).value.prev))
    end

    def next
      GLib::Source.new((to_unsafe.as(LibGLib::Source*).value.next_))
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::Source*).value.name); ::String.new((to_unsafe.as(LibGLib::Source*).value.name)))
    end

    def priv
      GLib::SourcePrivate.new((to_unsafe.as(LibGLib::Source*).value.priv))
    end

  end
end

