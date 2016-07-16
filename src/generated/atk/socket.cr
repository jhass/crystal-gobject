require "./object"

module Atk
  class Socket < Object
    @atk_socket : LibAtk::Socket*?
    def initialize(@atk_socket : LibAtk::Socket*)
    end

    def to_unsafe
      @atk_socket.not_nil!.as(Void*)
    end

    # Implements Component
    def self.new : self
      __return_value = LibAtk.socket_new
      cast Atk::Object.new(__return_value)
    end

    def embed(plug_id)
      __return_value = LibAtk.socket_embed(to_unsafe.as(LibAtk::Socket*), plug_id.to_unsafe)
      __return_value
    end

    def occupied?
      __return_value = LibAtk.socket_is_occupied(to_unsafe.as(LibAtk::Socket*))
      __return_value
    end

  end
end

