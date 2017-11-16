require "./object"

module Atk
  class Socket < Object
    @pointer : Void*
    def initialize(pointer : LibAtk::Socket*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Socket*)
    end

    # Implements Component
    def self.new : self
      __return_value = LibAtk.socket_new
      cast Atk::Object.new(__return_value)
    end

    def embed(plug_id)
      LibAtk.socket_embed(@pointer.as(LibAtk::Socket*), plug_id.to_unsafe)
      nil
    end

    def occupied?
      __return_value = LibAtk.socket_is_occupied(@pointer.as(LibAtk::Socket*))
      __return_value
    end

  end
end

