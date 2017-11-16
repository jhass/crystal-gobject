module Atk
  class RelationSet < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibAtk::RelationSet*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::RelationSet*)
    end

    def self.new : self
      __return_value = LibAtk.relation_set_new
      cast Atk::RelationSet.new(__return_value)
    end

    def add(relation)
      LibAtk.relation_set_add(@pointer.as(LibAtk::RelationSet*), relation.to_unsafe.as(LibAtk::Relation*))
      nil
    end

    def add_relation_by_type(relationship : Atk::RelationType, target)
      LibAtk.relation_set_add_relation_by_type(@pointer.as(LibAtk::RelationSet*), relationship, target.to_unsafe.as(LibAtk::Object*))
      nil
    end

    def contains(relationship : Atk::RelationType)
      __return_value = LibAtk.relation_set_contains(@pointer.as(LibAtk::RelationSet*), relationship)
      __return_value
    end

    def contains_target(relationship : Atk::RelationType, target)
      __return_value = LibAtk.relation_set_contains_target(@pointer.as(LibAtk::RelationSet*), relationship, target.to_unsafe.as(LibAtk::Object*))
      __return_value
    end

    def n_relations
      __return_value = LibAtk.relation_set_get_n_relations(@pointer.as(LibAtk::RelationSet*))
      __return_value
    end

    def relation(i)
      __return_value = LibAtk.relation_set_get_relation(@pointer.as(LibAtk::RelationSet*), Int32.new(i))
      Atk::Relation.new(__return_value)
    end

    def relation_by_type(relationship : Atk::RelationType)
      __return_value = LibAtk.relation_set_get_relation_by_type(@pointer.as(LibAtk::RelationSet*), relationship)
      Atk::Relation.new(__return_value)
    end

    def remove(relation)
      LibAtk.relation_set_remove(@pointer.as(LibAtk::RelationSet*), relation.to_unsafe.as(LibAtk::Relation*))
      nil
    end

  end
end

