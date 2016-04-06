module Gio
  class ThemedIcon < GObject::Object
    def initialize(@gio_themed_icon)
    end

    def to_unsafe
      @gio_themed_icon.not_nil!
    end

    # Implements Icon



    def self.new_internal(iconname)
      __return_value = LibGio.themed_icon_new(iconname)
      Gio::ThemedIcon.new(__return_value)
    end

    def self.new_from_names(iconnames, len)
      __return_value = LibGio.themed_icon_new_from_names(iconnames, Int32.new(len))
      Gio::ThemedIcon.new(__return_value)
    end

    def self.new_with_default_fallbacks(iconname)
      __return_value = LibGio.themed_icon_new_with_default_fallbacks(iconname)
      Gio::ThemedIcon.new(__return_value)
    end

    def append_name(iconname)
      __return_value = LibGio.themed_icon_append_name((to_unsafe as LibGio::ThemedIcon*), iconname)
      __return_value
    end

    def names
      __return_value = LibGio.themed_icon_get_names((to_unsafe as LibGio::ThemedIcon*))
      PointerIterator.new(__return_value) {|__item_90| (raise "Expected string but got null" unless __item_90; String.new(__item_90)) }
    end

    def prepend_name(iconname)
      __return_value = LibGio.themed_icon_prepend_name((to_unsafe as LibGio::ThemedIcon*), iconname)
      __return_value
    end

  end
end

