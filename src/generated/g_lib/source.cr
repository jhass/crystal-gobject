module GLib
  class Source
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(96, 0u8)
      super(ptr.as(LibGLib::Source*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::Source*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Source*)
    end

    def self.new(source_funcs, struct_size) : self
      __return_value = LibGLib.source_new(source_funcs.to_unsafe.as(LibGLib::SourceFuncs*), UInt32.new(struct_size))
      cast GLib::Source.new(__return_value)
    end

    def add_child_source(child_source)
      LibGLib.source_add_child_source(@pointer.as(LibGLib::Source*), child_source.to_unsafe.as(LibGLib::Source*))
      nil
    end

    def add_poll(fd)
      LibGLib.source_add_poll(@pointer.as(LibGLib::Source*), fd.to_unsafe.as(LibGLib::PollFD*))
      nil
    end

    def add_unix_fd(fd, events : GLib::IOCondition)
      LibGLib.source_add_unix_fd(@pointer.as(LibGLib::Source*), Int32.new(fd), events)
      nil
    end

    def attach(context)
      __return_value = LibGLib.source_attach(@pointer.as(LibGLib::Source*), context ? context.to_unsafe.as(LibGLib::MainContext*) : nil)
      __return_value
    end

    def destroy
      LibGLib.source_destroy(@pointer.as(LibGLib::Source*))
      nil
    end

    def can_recurse
      __return_value = LibGLib.source_get_can_recurse(@pointer.as(LibGLib::Source*))
      __return_value
    end

    def context
      __return_value = LibGLib.source_get_context(@pointer.as(LibGLib::Source*))
      GLib::MainContext.new(__return_value) if __return_value
    end

    def current_time(timeval)
      LibGLib.source_get_current_time(@pointer.as(LibGLib::Source*), timeval.to_unsafe.as(LibGLib::TimeVal*))
      nil
    end

    def id
      __return_value = LibGLib.source_get_id(@pointer.as(LibGLib::Source*))
      __return_value
    end

    def name
      __return_value = LibGLib.source_get_name(@pointer.as(LibGLib::Source*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def priority
      __return_value = LibGLib.source_get_priority(@pointer.as(LibGLib::Source*))
      __return_value
    end

    def ready_time
      __return_value = LibGLib.source_get_ready_time(@pointer.as(LibGLib::Source*))
      __return_value
    end

    def time
      __return_value = LibGLib.source_get_time(@pointer.as(LibGLib::Source*))
      __return_value
    end

    def destroyed?
      __return_value = LibGLib.source_is_destroyed(@pointer.as(LibGLib::Source*))
      __return_value
    end

    def modify_unix_fd(tag, new_events : GLib::IOCondition)
      LibGLib.source_modify_unix_fd(@pointer.as(LibGLib::Source*), tag, new_events)
      nil
    end

    def query_unix_fd(tag)
      __return_value = LibGLib.source_query_unix_fd(@pointer.as(LibGLib::Source*), tag)
      __return_value
    end

    def ref
      __return_value = LibGLib.source_ref(@pointer.as(LibGLib::Source*))
      GLib::Source.new(__return_value)
    end

    def remove_child_source(child_source)
      LibGLib.source_remove_child_source(@pointer.as(LibGLib::Source*), child_source.to_unsafe.as(LibGLib::Source*))
      nil
    end

    def remove_poll(fd)
      LibGLib.source_remove_poll(@pointer.as(LibGLib::Source*), fd.to_unsafe.as(LibGLib::PollFD*))
      nil
    end

    def remove_unix_fd(tag)
      LibGLib.source_remove_unix_fd(@pointer.as(LibGLib::Source*), tag)
      nil
    end

    def set_callback(func, data, notify)
      LibGLib.source_set_callback(@pointer.as(LibGLib::Source*), func, data ? data : nil, notify ? notify : nil)
      nil
    end

    def set_callback_indirect(callback_data, callback_funcs)
      LibGLib.source_set_callback_indirect(@pointer.as(LibGLib::Source*), callback_data ? callback_data : nil, callback_funcs.to_unsafe.as(LibGLib::SourceCallbackFuncs*))
      nil
    end

    def can_recurse=(can_recurse)
      LibGLib.source_set_can_recurse(@pointer.as(LibGLib::Source*), can_recurse)
      nil
    end

    def funcs=(funcs)
      LibGLib.source_set_funcs(@pointer.as(LibGLib::Source*), funcs.to_unsafe.as(LibGLib::SourceFuncs*))
      nil
    end

    def name=(name)
      LibGLib.source_set_name(@pointer.as(LibGLib::Source*), name.to_unsafe)
      nil
    end

    def priority=(priority)
      LibGLib.source_set_priority(@pointer.as(LibGLib::Source*), Int32.new(priority))
      nil
    end

    def ready_time=(ready_time)
      LibGLib.source_set_ready_time(@pointer.as(LibGLib::Source*), Int64.new(ready_time))
      nil
    end

    def unref
      LibGLib.source_unref(@pointer.as(LibGLib::Source*))
      nil
    end

    def self.remove(tag)
      __return_value = LibGLib.source_remove(UInt32.new(tag))
      __return_value
    end

    def self.remove_by_funcs_user_data(funcs, user_data)
      __return_value = LibGLib.source_remove_by_funcs_user_data(funcs.to_unsafe.as(LibGLib::SourceFuncs*), user_data ? user_data : nil)
      __return_value
    end

    def self.remove_by_user_data(user_data)
      __return_value = LibGLib.source_remove_by_user_data(user_data ? user_data : nil)
      __return_value
    end

    def self.name_by_id=(tag, name)
      LibGLib.source_set_name_by_id(UInt32.new(tag), name.to_unsafe)
      nil
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

