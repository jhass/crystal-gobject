require "./object"

module GObject
  class InitiallyUnowned < Object
    @pointer : Void*
    def initialize(pointer : LibGObject::InitiallyUnowned*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::InitiallyUnowned*)
    end

  end
end

