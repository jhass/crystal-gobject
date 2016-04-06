module Atk
  class StateSet < GObject::Object
    def initialize(@atk_state_set)
    end

    def to_unsafe
      @atk_state_set.not_nil!
    end

    def self.new_internal
      __return_value = LibAtk.state_set_new
      Atk::StateSet.new(__return_value)
    end

    def add_state(type)
      __return_value = LibAtk.state_set_add_state((to_unsafe as LibAtk::StateSet*), type)
      __return_value
    end

    def add_states(types, n_types)
      __return_value = LibAtk.state_set_add_states((to_unsafe as LibAtk::StateSet*), types, Int32.new(n_types))
      __return_value
    end

    def and_sets(compare_set)
      __return_value = LibAtk.state_set_and_sets((to_unsafe as LibAtk::StateSet*), (compare_set.to_unsafe as LibAtk::StateSet*))
      Atk::StateSet.new(__return_value)
    end

    def clear_states
      __return_value = LibAtk.state_set_clear_states((to_unsafe as LibAtk::StateSet*))
      __return_value
    end

    def contains_state(type)
      __return_value = LibAtk.state_set_contains_state((to_unsafe as LibAtk::StateSet*), type)
      __return_value
    end

    def contains_states(types, n_types)
      __return_value = LibAtk.state_set_contains_states((to_unsafe as LibAtk::StateSet*), types, Int32.new(n_types))
      __return_value
    end

    def empty?
      __return_value = LibAtk.state_set_is_empty((to_unsafe as LibAtk::StateSet*))
      __return_value
    end

    def or_sets(compare_set)
      __return_value = LibAtk.state_set_or_sets((to_unsafe as LibAtk::StateSet*), (compare_set.to_unsafe as LibAtk::StateSet*))
      Atk::StateSet.new(__return_value) if __return_value
    end

    def remove_state(type)
      __return_value = LibAtk.state_set_remove_state((to_unsafe as LibAtk::StateSet*), type)
      __return_value
    end

    def xor_sets(compare_set)
      __return_value = LibAtk.state_set_xor_sets((to_unsafe as LibAtk::StateSet*), (compare_set.to_unsafe as LibAtk::StateSet*))
      Atk::StateSet.new(__return_value)
    end

  end
end

