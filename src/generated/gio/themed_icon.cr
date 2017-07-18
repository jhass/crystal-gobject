module Gio
  class ThemedIcon < GObject::Object
    @gio_themed_icon : LibGio::ThemedIcon*?
    def initialize(@gio_themed_icon : LibGio::ThemedIcon*)
    end

    def to_unsafe
      @gio_themed_icon.not_nil!
    end

    # Implements Icon

    def names
      __return_value = LibGio.themed_icon_get_names(to_unsafe.as(LibGio::ThemedIcon*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def use_default_fallbacks
      __return_value = LibGio.themed_icon_get_use_default_fallbacks(to_unsafe.as(LibGio::ThemedIcon*))
      __return_value
    end

    def self.new(iconname) : self
      __return_value = LibGio.themed_icon_new(iconname.to_unsafe)
      cast Gio::ThemedIcon.new(__return_value)
    end

    def self.new_from_names(iconnames, len) : self
      __return_value = LibGio.themed_icon_new_from_names(iconnames, Int32.new(len))
      cast Gio::ThemedIcon.new(__return_value)
    end

    def self.new_with_default_fallbacks(iconname) : self
      __return_value = LibGio.themed_icon_new_with_default_fallbacks(iconname.to_unsafe)
      cast Gio::ThemedIcon.new(__return_value)
    end

    def append_name(iconname)
      __return_value = LibGio.themed_icon_append_name(to_unsafe.as(LibGio::ThemedIcon*), iconname.to_unsafe)
      __return_value
    end

    def names
      __return_value = LibGio.themed_icon_get_names(to_unsafe.as(LibGio::ThemedIcon*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def prepend_name(iconname)
      __return_value = LibGio.themed_icon_prepend_name(to_unsafe.as(LibGio::ThemedIcon*), iconname.to_unsafe)
      __return_value
    end

  end
end

