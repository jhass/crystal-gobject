require "./object"

module Atk
  class Plug < Object
    @atk_plug : LibAtk::Plug*?
    def initialize(@atk_plug : LibAtk::Plug*)
    end

    def to_unsafe
      @atk_plug.not_nil!
    end

    # Implements Component
    def self.new : self
      __return_value = LibAtk.plug_new
      cast Atk::Object.new(__return_value)
    end

    def id
      __return_value = LibAtk.plug_get_id((to_unsafe as LibAtk::Plug*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

