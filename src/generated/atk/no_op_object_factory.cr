require "./object_factory"

module Atk
  class NoOpObjectFactory < ObjectFactory
    @atk_no_op_object_factory : LibAtk::NoOpObjectFactory*?
    def initialize(@atk_no_op_object_factory : LibAtk::NoOpObjectFactory*)
    end

    def to_unsafe
      @atk_no_op_object_factory.not_nil!
    end

    def self.new : self
      __return_value = LibAtk.no_op_object_factory_new
      cast Atk::ObjectFactory.new(__return_value)
    end

  end
end

