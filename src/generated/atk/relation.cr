module Atk
  class Relation < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibAtk::Relation*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Relation*)
    end

    def relation_type
      __return_value = LibAtk.relation_get_relation_type(to_unsafe.as(LibAtk::Relation*))
      __return_value
    end

    def target
      __return_value = LibAtk.relation_get_target(to_unsafe.as(LibAtk::Relation*))
      GObject::ValueArray.new(__return_value)
    end

    def self.new(targets, n_targets, relationship : Atk::RelationType) : self
      __return_value = LibAtk.relation_new(targets, Int32.new(n_targets), relationship)
      cast Atk::Relation.new(__return_value)
    end

    def add_target(target)
      LibAtk.relation_add_target(@pointer.as(LibAtk::Relation*), target.to_unsafe.as(LibAtk::Object*))
      nil
    end

    def relation_type
      __return_value = LibAtk.relation_get_relation_type(@pointer.as(LibAtk::Relation*))
      __return_value
    end

    def target
      __return_value = LibAtk.relation_get_target(@pointer.as(LibAtk::Relation*))
      __return_value
    end

    def remove_target(target)
      __return_value = LibAtk.relation_remove_target(@pointer.as(LibAtk::Relation*), target.to_unsafe.as(LibAtk::Object*))
      __return_value
    end

  end
end

