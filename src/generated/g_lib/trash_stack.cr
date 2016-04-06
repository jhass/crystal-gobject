module GLib
  class TrashStack
    include GObject::WrappedType

    def initialize(@g_lib_trash_stack)
    end

    def to_unsafe
      @g_lib_trash_stack.not_nil!
    end

    def self.height(stack_p)
      __return_value = LibGLib.trash_stack_height((stack_p.to_unsafe as LibGLib::TrashStack*))
      __return_value
    end

    def self.push(stack_p, data_p)
      __return_value = LibGLib.trash_stack_push((stack_p.to_unsafe as LibGLib::TrashStack*), data_p)
      __return_value
    end

  end
end

