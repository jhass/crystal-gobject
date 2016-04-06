module Gdk
  class WindowRedirect
    include GObject::WrappedType

    def initialize(@gdk_window_redirect)
    end

    def to_unsafe
      @gdk_window_redirect.not_nil!
    end

  end
end

