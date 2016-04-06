require "./object"

module Atk
  class Socket < Object
    def initialize(@atk_socket)
    end

    def to_unsafe
      @atk_socket.not_nil!
    end

    # Implements Component
    def self.new_internal
      __return_value = LibAtk.socket_new
      Atk::Object.new(__return_value)
    end

    def embed(plug_id)
      __return_value = LibAtk.socket_embed((to_unsafe as LibAtk::Socket*), plug_id)
      __return_value
    end

    def occupied?
      __return_value = LibAtk.socket_is_occupied((to_unsafe as LibAtk::Socket*))
      __return_value
    end

  end
end

