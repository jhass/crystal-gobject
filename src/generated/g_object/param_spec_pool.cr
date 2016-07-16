module GObject
  class ParamSpecPool
    include GObject::WrappedType

    @g_object_param_spec_pool : LibGObject::ParamSpecPool*?
    def initialize(@g_object_param_spec_pool : LibGObject::ParamSpecPool*)
    end

    def to_unsafe
      @g_object_param_spec_pool.not_nil!.as(Void*)
    end

    def insert(pspec, owner_type)
      __return_value = LibGObject.param_spec_pool_insert(to_unsafe.as(LibGObject::ParamSpecPool*), pspec.to_unsafe.as(LibGObject::ParamSpec*), UInt64.new(owner_type))
      __return_value
    end

    def list(owner_type, n_pspecs_p)
      __return_value = LibGObject.param_spec_pool_list(to_unsafe.as(LibGObject::ParamSpecPool*), UInt64.new(owner_type), n_pspecs_p)
      PointerIterator.new(__return_value) {|__item| GObject::ParamSpec.new(__item) }
    end

    def list_owned(owner_type)
      __return_value = LibGObject.param_spec_pool_list_owned(to_unsafe.as(LibGObject::ParamSpecPool*), UInt64.new(owner_type))
      __return_value
    end

    def lookup(param_name, owner_type, walk_ancestors)
      __return_value = LibGObject.param_spec_pool_lookup(to_unsafe.as(LibGObject::ParamSpecPool*), param_name.to_unsafe, UInt64.new(owner_type), walk_ancestors)
      GObject::ParamSpec.new(__return_value)
    end

    def remove(pspec)
      __return_value = LibGObject.param_spec_pool_remove(to_unsafe.as(LibGObject::ParamSpecPool*), pspec.to_unsafe.as(LibGObject::ParamSpec*))
      __return_value
    end

    def self.new(type_prefixing)
      __return_value = LibGObject.param_spec_pool_new(type_prefixing)
      GObject::ParamSpecPool.new(__return_value)
    end

  end
end

