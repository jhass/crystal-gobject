module Atk
  class Util < GObject::Object
    @atk_util : LibAtk::Util*?
    def initialize(@atk_util : LibAtk::Util*)
    end

    def to_unsafe
      @atk_util.not_nil!
    end

  end
end

