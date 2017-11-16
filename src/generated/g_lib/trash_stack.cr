module GLib
  class TrashStack
    include GObject::WrappedType

    def self.new(next next_ : GLib::TrashStack|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      new(ptr.as(LibGLib::TrashStack*)).tap do |object|
        object.next = next_ unless next_.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::TrashStack*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::TrashStack*)
    end

    def self.height(stack_p)
      __return_value = LibGLib.trash_stack_height(stack_p.to_unsafe.as(LibGLib::TrashStack*))
      __return_value
    end

    def self.peek(stack_p)
      LibGLib.trash_stack_peek(stack_p.to_unsafe.as(LibGLib::TrashStack*))
      nil
    end

    def self.pop(stack_p)
      LibGLib.trash_stack_pop(stack_p.to_unsafe.as(LibGLib::TrashStack*))
      nil
    end

    def self.push(stack_p, data_p)
      LibGLib.trash_stack_push(stack_p.to_unsafe.as(LibGLib::TrashStack*), data_p)
      nil
    end

    def next
      GLib::TrashStack.new((to_unsafe.as(LibGLib::TrashStack*).value.next_))
    end

    def next=(value : GLib::TrashStack)
      to_unsafe.as(LibGLib::TrashStack*).value.next_ = value.to_unsafe.as(LibGLib::TrashStack*)
    end

  end
end

