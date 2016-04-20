module Gdk
  class WindowRedirect
    include GObject::WrappedType

    @gdk_window_redirect : LibGdk::WindowRedirect*?
    def initialize(@gdk_window_redirect : LibGdk::WindowRedirect*)
    end

    def to_unsafe
      @gdk_window_redirect.not_nil!
    end

  end
end

