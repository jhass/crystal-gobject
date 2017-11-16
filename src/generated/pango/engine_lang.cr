require "./engine"

module Pango
  class EngineLang < Engine
    @pointer : Void*
    def initialize(pointer : LibPango::EngineLang*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::EngineLang*)
    end

  end
end

