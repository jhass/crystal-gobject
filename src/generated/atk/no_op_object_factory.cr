require "./object_factory"

module Atk
  class NoOpObjectFactory < ObjectFactory
    def initialize(@atk_no_op_object_factory)
    end

    def to_unsafe
      @atk_no_op_object_factory.not_nil!
    end

    def self.new_internal
      __return_value = LibAtk.no_op_object_factory_new
      Atk::ObjectFactory.new(__return_value)
    end

  end
end

