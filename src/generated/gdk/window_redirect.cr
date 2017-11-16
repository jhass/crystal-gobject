module Gdk
  class WindowRedirect
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGdk::WindowRedirect*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::WindowRedirect*)
    end

  end
end

