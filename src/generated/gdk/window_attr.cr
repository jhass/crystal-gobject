module Gdk
  class WindowAttr
    include GObject::WrappedType

    @gdk_window_attr : LibGdk::WindowAttr*?
    def initialize(@gdk_window_attr : LibGdk::WindowAttr*)
    end

    def to_unsafe
      @gdk_window_attr.not_nil!
    end

  end
end

