module GObject
  class ParamSpecPool
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpecPool*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpecPool*)
    end

    def insert(pspec, owner_type)
      LibGObject.param_spec_pool_insert(@pointer.as(LibGObject::ParamSpecPool*), pspec.to_unsafe.as(LibGObject::ParamSpec*), UInt64.new(owner_type))
      nil
    end

    def list(owner_type, n_pspecs_p)
      __return_value = LibGObject.param_spec_pool_list(@pointer.as(LibGObject::ParamSpecPool*), UInt64.new(owner_type), n_pspecs_p)
      PointerIterator.new(__return_value) {|__item| GObject::ParamSpec.new(__item) }
    end

    def list_owned(owner_type)
      __return_value = LibGObject.param_spec_pool_list_owned(@pointer.as(LibGObject::ParamSpecPool*), UInt64.new(owner_type))
      GLib::ListIterator(GObject::ParamSpec, LibGObject::ParamSpec**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def lookup(param_name, owner_type, walk_ancestors)
      __return_value = LibGObject.param_spec_pool_lookup(@pointer.as(LibGObject::ParamSpecPool*), param_name.to_unsafe, UInt64.new(owner_type), walk_ancestors)
      GObject::ParamSpec.new(__return_value)
    end

    def remove(pspec)
      LibGObject.param_spec_pool_remove(@pointer.as(LibGObject::ParamSpecPool*), pspec.to_unsafe.as(LibGObject::ParamSpec*))
      nil
    end

    def self.new(type_prefixing)
      __return_value = LibGObject.param_spec_pool_new(type_prefixing)
      GObject::ParamSpecPool.new(__return_value)
    end

  end
end

