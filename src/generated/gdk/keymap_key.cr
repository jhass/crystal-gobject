module Gdk
  class KeymapKey
    include GObject::WrappedType

    @gdk_keymap_key : LibGdk::KeymapKey*?
    def initialize(@gdk_keymap_key : LibGdk::KeymapKey*)
    end

    def to_unsafe
      @gdk_keymap_key.not_nil!
    end

  end
end

