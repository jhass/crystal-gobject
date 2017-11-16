module Atk
  class Util < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibAtk::Util*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Util*)
    end

  end
end

