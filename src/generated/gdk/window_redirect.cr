module Gdk
  class WindowRedirect
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGdk::WindowRedirect*))
    end

    @gdk_window_redirect : LibGdk::WindowRedirect*?
    def initialize(@gdk_window_redirect : LibGdk::WindowRedirect*)
    end

    def to_unsafe
      @gdk_window_redirect.not_nil!
    end

  end
end

