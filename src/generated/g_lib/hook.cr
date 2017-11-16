module GLib
  class Hook
    include GObject::WrappedType

    def self.new(data : Void*|Nil = nil, next next_ : GLib::Hook|Nil = nil, prev : GLib::Hook|Nil = nil, ref_count : UInt32|Nil = nil, hook_id : UInt64|Nil = nil, flags : UInt32|Nil = nil, func : Void*|Nil = nil, destroy : GLib::DestroyNotify|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGLib::Hook*)).tap do |object|
        object.data = data unless data.nil?
        object.next = next_ unless next_.nil?
        object.prev = prev unless prev.nil?
        object.ref_count = ref_count unless ref_count.nil?
        object.hook_id = hook_id unless hook_id.nil?
        object.flags = flags unless flags.nil?
        object.func = func unless func.nil?
        object.destroy = destroy unless destroy.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::Hook*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Hook*)
    end

    def compare_ids(sibling)
      __return_value = LibGLib.hook_compare_ids(@pointer.as(LibGLib::Hook*), sibling.to_unsafe.as(LibGLib::Hook*))
      __return_value
    end

    def self.destroy(hook_list, hook_id)
      __return_value = LibGLib.hook_destroy(hook_list.to_unsafe.as(LibGLib::HookList*), UInt64.new(hook_id))
      __return_value
    end

    def self.destroy_link(hook_list, hook)
      LibGLib.hook_destroy_link(hook_list.to_unsafe.as(LibGLib::HookList*), hook.to_unsafe.as(LibGLib::Hook*))
      nil
    end

    def self.free(hook_list, hook)
      LibGLib.hook_free(hook_list.to_unsafe.as(LibGLib::HookList*), hook.to_unsafe.as(LibGLib::Hook*))
      nil
    end

    def self.insert_before(hook_list, sibling, hook)
      LibGLib.hook_insert_before(hook_list.to_unsafe.as(LibGLib::HookList*), sibling ? sibling.to_unsafe.as(LibGLib::Hook*) : nil, hook.to_unsafe.as(LibGLib::Hook*))
      nil
    end

    def self.prepend(hook_list, hook)
      LibGLib.hook_prepend(hook_list.to_unsafe.as(LibGLib::HookList*), hook.to_unsafe.as(LibGLib::Hook*))
      nil
    end

    def self.unref(hook_list, hook)
      LibGLib.hook_unref(hook_list.to_unsafe.as(LibGLib::HookList*), hook.to_unsafe.as(LibGLib::Hook*))
      nil
    end

    def data
      (to_unsafe.as(LibGLib::Hook*).value.data)
    end

    def data=(value : Void*)
      to_unsafe.as(LibGLib::Hook*).value.data = value
    end

    def next
      GLib::Hook.new((to_unsafe.as(LibGLib::Hook*).value.next_))
    end

    def next=(value : GLib::Hook)
      to_unsafe.as(LibGLib::Hook*).value.next_ = value.to_unsafe.as(LibGLib::Hook*)
    end

    def prev
      GLib::Hook.new((to_unsafe.as(LibGLib::Hook*).value.prev))
    end

    def prev=(value : GLib::Hook)
      to_unsafe.as(LibGLib::Hook*).value.prev = value.to_unsafe.as(LibGLib::Hook*)
    end

    def ref_count
      (to_unsafe.as(LibGLib::Hook*).value.ref_count)
    end

    def ref_count=(value : UInt32)
      to_unsafe.as(LibGLib::Hook*).value.ref_count = UInt32.new(value)
    end

    def hook_id
      (to_unsafe.as(LibGLib::Hook*).value.hook_id)
    end

    def hook_id=(value : UInt64)
      to_unsafe.as(LibGLib::Hook*).value.hook_id = UInt64.new(value)
    end

    def flags
      (to_unsafe.as(LibGLib::Hook*).value.flags)
    end

    def flags=(value : UInt32)
      to_unsafe.as(LibGLib::Hook*).value.flags = UInt32.new(value)
    end

    def func
      (to_unsafe.as(LibGLib::Hook*).value.func)
    end

    def func=(value : Void*)
      to_unsafe.as(LibGLib::Hook*).value.func = value
    end

    def destroy
      (to_unsafe.as(LibGLib::Hook*).value.destroy)
    end

    def destroy=(value : GLib::DestroyNotify)
      to_unsafe.as(LibGLib::Hook*).value.destroy = value
    end

  end
end

