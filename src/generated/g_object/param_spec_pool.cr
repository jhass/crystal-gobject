module GObject
  class ParamSpecPool
    include GObject::WrappedType

    def initialize @g_object_param_spec_pool
    end

    def to_unsafe
      @g_object_param_spec_pool.not_nil!
    end

    def insert(pspec, owner_type)
      __return_value = LibGObject.param_spec_pool_insert((to_unsafe as LibGObject::ParamSpecPool*), (pspec.to_unsafe as LibGObject::ParamSpec*), UInt64.new(owner_type))
      __return_value
    end

    def list(owner_type, n_pspecs_p)
      __return_value = LibGObject.param_spec_pool_list((to_unsafe as LibGObject::ParamSpecPool*), UInt64.new(owner_type), UInt32.new(n_pspecs_p))
      PointerIterator.new(__return_value) {|__item_34| GObject::ParamSpec.new(__item_34) }
    end

    def list_owned(owner_type)
      __return_value = LibGObject.param_spec_pool_list_owned((to_unsafe as LibGObject::ParamSpecPool*), UInt64.new(owner_type))
      __return_value
    end

    def lookup(param_name, owner_type, walk_ancestors)
      __return_value = LibGObject.param_spec_pool_lookup((to_unsafe as LibGObject::ParamSpecPool*), param_name, UInt64.new(owner_type), Bool.new(walk_ancestors))
      GObject::ParamSpec.new(__return_value)
    end

    def remove(pspec)
      __return_value = LibGObject.param_spec_pool_remove((to_unsafe as LibGObject::ParamSpecPool*), (pspec.to_unsafe as LibGObject::ParamSpec*))
      __return_value
    end

    def self.new_internal(type_prefixing)
      __return_value = LibGObject.param_spec_pool_new(Bool.new(type_prefixing))
      GObject::ParamSpecPool.new(__return_value)
    end

  end
end

