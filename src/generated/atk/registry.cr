module Atk
  class Registry < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibAtk::Registry*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Registry*)
    end

    def factory(type)
      __return_value = LibAtk.registry_get_factory(@pointer.as(LibAtk::Registry*), UInt64.new(type))
      Atk::ObjectFactory.new(__return_value)
    end

    def factory_type(type)
      __return_value = LibAtk.registry_get_factory_type(@pointer.as(LibAtk::Registry*), UInt64.new(type))
      __return_value
    end

    def set_factory_type(type, factory_type)
      LibAtk.registry_set_factory_type(@pointer.as(LibAtk::Registry*), UInt64.new(type), UInt64.new(factory_type))
      nil
    end

  end
end

