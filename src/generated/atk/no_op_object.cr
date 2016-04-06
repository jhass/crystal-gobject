require "./object"

module Atk
  class NoOpObject < Object
    def initialize(@atk_no_op_object)
    end

    def to_unsafe
      @atk_no_op_object.not_nil!
    end

    # Implements Action
    # Implements Component
    # Implements Document
    # Implements EditableText
    # Implements Hypertext
    # Implements Image
    # Implements Selection
    # Implements Table
    # Implements TableCell
    # Implements Text
    # Implements Value
    # Implements Window
    def self.new_internal(obj)
      __return_value = LibAtk.no_op_object_new((obj.to_unsafe as LibGObject::Object*))
      Atk::Object.new(__return_value)
    end

  end
end

