require "./object"

module Atk
  class Plug < Object
    def initialize(@atk_plug)
    end

    def to_unsafe
      @atk_plug.not_nil!
    end

    # Implements Component
    def self.new_internal
      __return_value = LibAtk.plug_new
      Atk::Object.new(__return_value)
    end

    def id
      __return_value = LibAtk.plug_get_id((to_unsafe as LibAtk::Plug*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

  end
end

