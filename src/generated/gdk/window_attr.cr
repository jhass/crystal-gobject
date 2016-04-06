module Gdk
  class WindowAttr
    include GObject::WrappedType

    def initialize(@gdk_window_attr)
    end

    def to_unsafe
      @gdk_window_attr.not_nil!
    end

  end
end

