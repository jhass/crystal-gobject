module Gio
  class Emblem < GObject::Object
    @gio_emblem : LibGio::Emblem*?
    def initialize(@gio_emblem : LibGio::Emblem*)
    end

    def to_unsafe
      @gio_emblem.not_nil!.as(Void*)
    end

    # Implements Icon


    def self.new(icon) : self
      __return_value = LibGio.emblem_new(icon.to_unsafe.as(LibGio::Icon*))
      cast Gio::Emblem.new(__return_value)
    end

    def self.new_with_origin(icon, origin) : self
      __return_value = LibGio.emblem_new_with_origin(icon.to_unsafe.as(LibGio::Icon*), origin)
      cast Gio::Emblem.new(__return_value)
    end

    def icon
      __return_value = LibGio.emblem_get_icon(to_unsafe.as(LibGio::Emblem*))
      __return_value
    end

    def origin
      __return_value = LibGio.emblem_get_origin(to_unsafe.as(LibGio::Emblem*))
      __return_value
    end

  end
end

