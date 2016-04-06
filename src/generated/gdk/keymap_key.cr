module Gdk
  class KeymapKey
    include GObject::WrappedType

    def initialize(@gdk_keymap_key)
    end

    def to_unsafe
      @gdk_keymap_key.not_nil!
    end

  end
end

