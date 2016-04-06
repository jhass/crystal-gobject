module Gio
  class Emblem < GObject::Object
    def initialize(@gio_emblem)
    end

    def to_unsafe
      @gio_emblem.not_nil!
    end

    # Implements Icon


    def self.new_internal(icon)
      __return_value = LibGio.emblem_new((icon.to_unsafe as LibGio::Icon*))
      Gio::Emblem.new(__return_value)
    end

    def self.new_with_origin(icon, origin)
      __return_value = LibGio.emblem_new_with_origin((icon.to_unsafe as LibGio::Icon*), origin)
      Gio::Emblem.new(__return_value)
    end

    def icon
      __return_value = LibGio.emblem_get_icon((to_unsafe as LibGio::Emblem*))
      __return_value
    end

    def origin
      __return_value = LibGio.emblem_get_origin((to_unsafe as LibGio::Emblem*))
      __return_value
    end

  end
end

