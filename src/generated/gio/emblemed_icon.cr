module Gio
  class EmblemedIcon < GObject::Object
    def initialize(@gio_emblemed_icon)
    end

    def to_unsafe
      @gio_emblemed_icon.not_nil!
    end

    # Implements Icon

    def self.new_internal(icon, emblem)
      __return_value = LibGio.emblemed_icon_new((icon.to_unsafe as LibGio::Icon*), emblem && (emblem.to_unsafe as LibGio::Emblem*))
      Gio::EmblemedIcon.new(__return_value)
    end

    def add_emblem(emblem)
      __return_value = LibGio.emblemed_icon_add_emblem((to_unsafe as LibGio::EmblemedIcon*), (emblem.to_unsafe as LibGio::Emblem*))
      __return_value
    end

    def clear_emblems
      __return_value = LibGio.emblemed_icon_clear_emblems((to_unsafe as LibGio::EmblemedIcon*))
      __return_value
    end

    def emblems
      __return_value = LibGio.emblemed_icon_get_emblems((to_unsafe as LibGio::EmblemedIcon*))
      __return_value
    end

    def icon
      __return_value = LibGio.emblemed_icon_get_icon((to_unsafe as LibGio::EmblemedIcon*))
      __return_value
    end

  end
end

