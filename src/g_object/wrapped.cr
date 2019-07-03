module GObject
  module WrappedType
    GOBJECT_IS_WRAPPED_TAG = "__crystal_gobject_wrapper_id__"

    @@n_wrapped            = UInt64.new(-1)
    @@wrapped              = Hash(UInt64?, GObject::WrappedType?).new

    def self.set_wrapped(ins)
      @@n_wrapped += 1

      ins.set_data_full(GOBJECT_IS_WRAPPED_TAG, Pointer(UInt64).new(@@n_wrapped+1).as(Void*), ->(d : Void*){
        GObject::WrappedType.unwrap(d.address-1)
        nil
      })

      @@n_wrapped
    end

    def self.keep_wrapper(ins)
      if ins.has_wrapper?
        id = ins.wrapper_id
      else
        id = set_wrapped ins
      end

      @@wrapped[id] = ins
    end

    def self.unwrap(id : UInt64)
      @@wrapped.delete id
    end

    def self.wrapper(id : UInt64?)
      @@wrapped[id]
    rescue KeyError
      nil
    end

    def self.wrapper(ptr)
      if id=wrapper_id(ptr.as(LibGObject::Object*))
        wrapper(id)
      end
    end

    def self.wrapper_id(ptr) : UInt64?
      addr = LibGObject.object_get_data(ptr.as(LibGObject::Object*), GObject::WrappedType::GOBJECT_IS_WRAPPED_TAG).address
      if addr >= 0
        addr-1
      else
        nil
      end
    end

    def self.has_wrapper?(id : Int)
      @@wrapped.has_key?(id)
    end

    def self.has_wrapper?(ptr)
      @@wrapped.has_key?(wrapper_id(ptr.as(LibGObject::Object*)))
    end    

    def set_data_full(key, data, cb)
      LibGObject.object_set_data_full(@pointer.as(LibGObject::Object*), key.to_unsafe, data ? data : nil,cb)
      data
    end

    def set_wrapped
      return if !is_a?(GObject::Object)
      unless has_wrapper?
        GObject::WrappedType.set_wrapped self
      end
    end

    def has_wrapper?
      return unless is_a?(GObject::Object)
      GObject::WrappedType.has_wrapper?(@pointer.as(LibGObject::Object*))
    end

    def wrapper_id
      if has_wrapper?
        GObject::WrappedType.wrapper_id(@pointer.as(LibGObject::Object*))
      end
    end

    def keep_wrapper
      GObject::WrappedType.keep_wrapper self
    end

    def wrapper
      GObject::WrappedType.wrapper(self)
    end

    def instantiate
      raise "foo"
    end
  end
end

lib LibGObject
  alias DestroyNotify = Void* -> Void
  fun object_set_data_full = g_object_set_data_full(this : LibGObject::Object*, key : UInt8*, data : Void*, closure : LibGObject::DestroyNotify) : Void
end
