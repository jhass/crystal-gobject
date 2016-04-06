module Atk
  class Relation < GObject::Object
    def initialize(@atk_relation)
    end

    def to_unsafe
      @atk_relation.not_nil!
    end



    def self.new_internal(targets, n_targets, relationship)
      __return_value = LibAtk.relation_new(targets, Int32.new(n_targets), relationship)
      Atk::Relation.new(__return_value)
    end

    def add_target(target)
      __return_value = LibAtk.relation_add_target((to_unsafe as LibAtk::Relation*), (target.to_unsafe as LibAtk::Object*))
      __return_value
    end

    def relation_type
      __return_value = LibAtk.relation_get_relation_type((to_unsafe as LibAtk::Relation*))
      __return_value
    end

    def target
      __return_value = LibAtk.relation_get_target((to_unsafe as LibAtk::Relation*))
      __return_value
    end

    def remove_target(target)
      __return_value = LibAtk.relation_remove_target((to_unsafe as LibAtk::Relation*), (target.to_unsafe as LibAtk::Object*))
      __return_value
    end

  end
end

