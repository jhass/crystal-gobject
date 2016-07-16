module GLib
  class TrashStack
    include GObject::WrappedType

    def self.new(next next_ : GLib::TrashStack|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      new(ptr.as(LibGLib::TrashStack*)).tap do |object|
        object.next = next_ unless next_.nil?
      end
    end

    @g_lib_trash_stack : LibGLib::TrashStack*?
    def initialize(@g_lib_trash_stack : LibGLib::TrashStack*)
    end

    def to_unsafe
      @g_lib_trash_stack.not_nil!
    end

    def self.height(stack_p)
      __return_value = LibGLib.trash_stack_height(stack_p.to_unsafe.as(LibGLib::TrashStack*))
      __return_value
    end

    def self.peek(stack_p)
      __return_value = LibGLib.trash_stack_peek(stack_p.to_unsafe.as(LibGLib::TrashStack*))
      __return_value if __return_value
    end

    def self.pop(stack_p)
      __return_value = LibGLib.trash_stack_pop(stack_p.to_unsafe.as(LibGLib::TrashStack*))
      __return_value if __return_value
    end

    def self.push(stack_p, data_p)
      __return_value = LibGLib.trash_stack_push(stack_p.to_unsafe.as(LibGLib::TrashStack*), data_p)
      __return_value
    end

    def next
      GLib::TrashStack.new((to_unsafe.value.next_))
    end

    def next=(value : GLib::TrashStack)
      to_unsafe.value.next_ = value.to_unsafe.as(LibGLib::TrashStack*)
    end

  end
end

