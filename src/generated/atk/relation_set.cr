module Atk
  class RelationSet < GObject::Object
    def initialize(@atk_relation_set)
    end

    def to_unsafe
      @atk_relation_set.not_nil!
    end

    def self.new_internal
      __return_value = LibAtk.relation_set_new
      Atk::RelationSet.new(__return_value)
    end

    def add(relation)
      __return_value = LibAtk.relation_set_add((to_unsafe as LibAtk::RelationSet*), (relation.to_unsafe as LibAtk::Relation*))
      __return_value
    end

    def add_relation_by_type(relationship, target)
      __return_value = LibAtk.relation_set_add_relation_by_type((to_unsafe as LibAtk::RelationSet*), relationship, (target.to_unsafe as LibAtk::Object*))
      __return_value
    end

    def contains(relationship)
      __return_value = LibAtk.relation_set_contains((to_unsafe as LibAtk::RelationSet*), relationship)
      __return_value
    end

    def contains_target(relationship, target)
      __return_value = LibAtk.relation_set_contains_target((to_unsafe as LibAtk::RelationSet*), relationship, (target.to_unsafe as LibAtk::Object*))
      __return_value
    end

    def n_relations
      __return_value = LibAtk.relation_set_get_n_relations((to_unsafe as LibAtk::RelationSet*))
      __return_value
    end

    def relation(i)
      __return_value = LibAtk.relation_set_get_relation((to_unsafe as LibAtk::RelationSet*), Int32.new(i))
      Atk::Relation.new(__return_value)
    end

    def relation_by_type(relationship)
      __return_value = LibAtk.relation_set_get_relation_by_type((to_unsafe as LibAtk::RelationSet*), relationship)
      Atk::Relation.new(__return_value)
    end

    def remove(relation)
      __return_value = LibAtk.relation_set_remove((to_unsafe as LibAtk::RelationSet*), (relation.to_unsafe as LibAtk::Relation*))
      __return_value
    end

  end
end

