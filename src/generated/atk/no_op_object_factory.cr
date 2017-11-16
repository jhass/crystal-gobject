require "./object_factory"

module Atk
  class NoOpObjectFactory < ObjectFactory
    @pointer : Void*
    def initialize(pointer : LibAtk::NoOpObjectFactory*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::NoOpObjectFactory*)
    end

    def self.new : self
      __return_value = LibAtk.no_op_object_factory_new
      cast Atk::ObjectFactory.new(__return_value)
    end

  end
end

