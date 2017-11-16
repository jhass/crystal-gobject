module Atk
  class StateSet < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibAtk::StateSet*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::StateSet*)
    end

    def self.new : self
      __return_value = LibAtk.state_set_new
      cast Atk::StateSet.new(__return_value)
    end

    def add_state(type : Atk::StateType)
      __return_value = LibAtk.state_set_add_state(@pointer.as(LibAtk::StateSet*), type)
      __return_value
    end

    def add_states(types, n_types)
      LibAtk.state_set_add_states(@pointer.as(LibAtk::StateSet*), types, Int32.new(n_types))
      nil
    end

    def and_sets(compare_set)
      __return_value = LibAtk.state_set_and_sets(@pointer.as(LibAtk::StateSet*), compare_set.to_unsafe.as(LibAtk::StateSet*))
      Atk::StateSet.new(__return_value)
    end

    def clear_states
      LibAtk.state_set_clear_states(@pointer.as(LibAtk::StateSet*))
      nil
    end

    def contains_state(type : Atk::StateType)
      __return_value = LibAtk.state_set_contains_state(@pointer.as(LibAtk::StateSet*), type)
      __return_value
    end

    def contains_states(types, n_types)
      __return_value = LibAtk.state_set_contains_states(@pointer.as(LibAtk::StateSet*), types, Int32.new(n_types))
      __return_value
    end

    def empty?
      __return_value = LibAtk.state_set_is_empty(@pointer.as(LibAtk::StateSet*))
      __return_value
    end

    def or_sets(compare_set)
      __return_value = LibAtk.state_set_or_sets(@pointer.as(LibAtk::StateSet*), compare_set.to_unsafe.as(LibAtk::StateSet*))
      Atk::StateSet.new(__return_value) if __return_value
    end

    def remove_state(type : Atk::StateType)
      __return_value = LibAtk.state_set_remove_state(@pointer.as(LibAtk::StateSet*), type)
      __return_value
    end

    def xor_sets(compare_set)
      __return_value = LibAtk.state_set_xor_sets(@pointer.as(LibAtk::StateSet*), compare_set.to_unsafe.as(LibAtk::StateSet*))
      Atk::StateSet.new(__return_value)
    end

  end
end

