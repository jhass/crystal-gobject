module GLib
  class Queue
    include GObject::WrappedType

    def self.new(head : Void*|Nil = nil, tail : Void*|Nil = nil, length : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGLib::Queue*)).tap do |object|
        object.head = head unless head.nil?
        object.tail = tail unless tail.nil?
        object.length = length unless length.nil?
      end
    end

    @g_lib_queue : LibGLib::Queue*?
    def initialize(@g_lib_queue : LibGLib::Queue*)
    end

    def to_unsafe
      @g_lib_queue.not_nil!
    end

    def clear
      __return_value = LibGLib.queue_clear(to_unsafe.as(LibGLib::Queue*))
      __return_value
    end

    def free
      __return_value = LibGLib.queue_free(to_unsafe.as(LibGLib::Queue*))
      __return_value
    end

    def free_full(free_func)
      __return_value = LibGLib.queue_free_full(to_unsafe.as(LibGLib::Queue*), free_func)
      __return_value
    end

    def length
      __return_value = LibGLib.queue_get_length(to_unsafe.as(LibGLib::Queue*))
      __return_value
    end

    def index(data)
      __return_value = LibGLib.queue_index(to_unsafe.as(LibGLib::Queue*), data && data)
      __return_value
    end

    def init
      __return_value = LibGLib.queue_init(to_unsafe.as(LibGLib::Queue*))
      __return_value
    end

    def empty?
      __return_value = LibGLib.queue_is_empty(to_unsafe.as(LibGLib::Queue*))
      __return_value
    end

    def peek_head
      __return_value = LibGLib.queue_peek_head(to_unsafe.as(LibGLib::Queue*))
      __return_value if __return_value
    end

    def peek_nth(n)
      __return_value = LibGLib.queue_peek_nth(to_unsafe.as(LibGLib::Queue*), UInt32.new(n))
      __return_value if __return_value
    end

    def peek_tail
      __return_value = LibGLib.queue_peek_tail(to_unsafe.as(LibGLib::Queue*))
      __return_value if __return_value
    end

    def pop_head
      __return_value = LibGLib.queue_pop_head(to_unsafe.as(LibGLib::Queue*))
      __return_value if __return_value
    end

    def pop_nth(n)
      __return_value = LibGLib.queue_pop_nth(to_unsafe.as(LibGLib::Queue*), UInt32.new(n))
      __return_value if __return_value
    end

    def pop_tail
      __return_value = LibGLib.queue_pop_tail(to_unsafe.as(LibGLib::Queue*))
      __return_value if __return_value
    end

    def push_head(data)
      __return_value = LibGLib.queue_push_head(to_unsafe.as(LibGLib::Queue*), data && data)
      __return_value
    end

    def push_nth(data, n)
      __return_value = LibGLib.queue_push_nth(to_unsafe.as(LibGLib::Queue*), data && data, Int32.new(n))
      __return_value
    end

    def push_tail(data)
      __return_value = LibGLib.queue_push_tail(to_unsafe.as(LibGLib::Queue*), data && data)
      __return_value
    end

    def remove(data)
      __return_value = LibGLib.queue_remove(to_unsafe.as(LibGLib::Queue*), data && data)
      __return_value
    end

    def remove_all(data)
      __return_value = LibGLib.queue_remove_all(to_unsafe.as(LibGLib::Queue*), data && data)
      __return_value
    end

    def reverse
      __return_value = LibGLib.queue_reverse(to_unsafe.as(LibGLib::Queue*))
      __return_value
    end

    def head
      GLib::ListIterator(Void*, Void**).new(GLib::SList.new((to_unsafe.as(LibGLib::Queue*).value.head).as(LibGLib::List*)))
    end

    def head=(value : Void*)
      to_unsafe.as(LibGLib::Queue*).value.head = value
    end

    def tail
      GLib::ListIterator(Void*, Void**).new(GLib::SList.new((to_unsafe.as(LibGLib::Queue*).value.tail).as(LibGLib::List*)))
    end

    def tail=(value : Void*)
      to_unsafe.as(LibGLib::Queue*).value.tail = value
    end

    def length
      (to_unsafe.as(LibGLib::Queue*).value.length)
    end

    def length=(value : UInt32)
      to_unsafe.as(LibGLib::Queue*).value.length = UInt32.new(value)
    end

  end
end

