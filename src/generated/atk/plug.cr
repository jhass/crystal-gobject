require "./object"

module Atk
  class Plug < Object
    @pointer : Void*
    def initialize(pointer : LibAtk::Plug*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Plug*)
    end

    # Implements Component
    def self.new : self
      __return_value = LibAtk.plug_new
      cast Atk::Object.new(__return_value)
    end

    def id
      __return_value = LibAtk.plug_get_id(@pointer.as(LibAtk::Plug*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

