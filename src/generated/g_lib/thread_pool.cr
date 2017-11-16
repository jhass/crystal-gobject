module GLib
  class ThreadPool
    include GObject::WrappedType

    def self.new(func : GLib::Func|Nil = nil, user_data : Void*|Nil = nil, exclusive : Bool|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGLib::ThreadPool*)).tap do |object|
        object.func = func unless func.nil?
        object.user_data = user_data unless user_data.nil?
        object.exclusive = exclusive unless exclusive.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::ThreadPool*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::ThreadPool*)
    end

    def free(immediate, wait)
      LibGLib.thread_pool_free(@pointer.as(LibGLib::ThreadPool*), immediate, wait)
      nil
    end

    def max_threads
      __return_value = LibGLib.thread_pool_get_max_threads(@pointer.as(LibGLib::ThreadPool*))
      __return_value
    end

    def num_threads
      __return_value = LibGLib.thread_pool_get_num_threads(@pointer.as(LibGLib::ThreadPool*))
      __return_value
    end

    def move_to_front(data)
      __return_value = LibGLib.thread_pool_move_to_front(@pointer.as(LibGLib::ThreadPool*), data ? data : nil)
      __return_value
    end

    def push(data)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.thread_pool_push(@pointer.as(LibGLib::ThreadPool*), data ? data : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_max_threads(max_threads)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.thread_pool_set_max_threads(@pointer.as(LibGLib::ThreadPool*), Int32.new(max_threads), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unprocessed
      __return_value = LibGLib.thread_pool_unprocessed(@pointer.as(LibGLib::ThreadPool*))
      __return_value
    end

    def self.max_idle_time
      __return_value = LibGLib.thread_pool_get_max_idle_time
      __return_value
    end

    def self.max_unused_threads
      __return_value = LibGLib.thread_pool_get_max_unused_threads
      __return_value
    end

    def self.num_unused_threads
      __return_value = LibGLib.thread_pool_get_num_unused_threads
      __return_value
    end

    def self.set_max_idle_time(interval)
      LibGLib.thread_pool_set_max_idle_time(UInt32.new(interval))
      nil
    end

    def self.set_max_unused_threads(max_threads)
      LibGLib.thread_pool_set_max_unused_threads(Int32.new(max_threads))
      nil
    end

    def self.stop_unused_threads
      LibGLib.thread_pool_stop_unused_threads
      nil
    end

    def func
      (to_unsafe.as(LibGLib::ThreadPool*).value.func)
    end

    def func=(value : GLib::Func)
      to_unsafe.as(LibGLib::ThreadPool*).value.func = value
    end

    def user_data
      (to_unsafe.as(LibGLib::ThreadPool*).value.user_data)
    end

    def user_data=(value : Void*)
      to_unsafe.as(LibGLib::ThreadPool*).value.user_data = value
    end

    def exclusive
      (to_unsafe.as(LibGLib::ThreadPool*).value.exclusive)
    end

    def exclusive=(value : Bool)
      to_unsafe.as(LibGLib::ThreadPool*).value.exclusive = value
    end

  end
end

