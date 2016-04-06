module Atk
  class Util < GObject::Object
    def initialize(@atk_util)
    end

    def to_unsafe
      @atk_util.not_nil!
    end

  end
end

