module Pango
  class Engine < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibPango::Engine*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Engine*)
    end

  end
end

