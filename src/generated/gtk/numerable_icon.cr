module Gtk
  class NumerableIcon < Gio::EmblemedIcon
    def initialize(@gtk_numerable_icon)
    end

    def to_unsafe
      @gtk_numerable_icon.not_nil!
    end

    # Implements Icon





    def self.new_internal(base_icon)
      __return_value = LibGtk.numerable_icon_new((base_icon.to_unsafe as LibGio::Icon*))
      __return_value
    end

    def self.new_with_style_context(base_icon, context)
      __return_value = LibGtk.numerable_icon_new_with_style_context((base_icon.to_unsafe as LibGio::Icon*), (context.to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

    def background_gicon
      __return_value = LibGtk.numerable_icon_get_background_gicon((to_unsafe as LibGtk::NumerableIcon*))
      __return_value
    end

    def background_icon_name
      __return_value = LibGtk.numerable_icon_get_background_icon_name((to_unsafe as LibGtk::NumerableIcon*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def count
      __return_value = LibGtk.numerable_icon_get_count((to_unsafe as LibGtk::NumerableIcon*))
      __return_value
    end

    def label
      __return_value = LibGtk.numerable_icon_get_label((to_unsafe as LibGtk::NumerableIcon*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def style_context
      __return_value = LibGtk.numerable_icon_get_style_context((to_unsafe as LibGtk::NumerableIcon*))
      Gtk::StyleContext.new(__return_value)
    end

    def background_gicon=(icon)
      __return_value = LibGtk.numerable_icon_set_background_gicon((to_unsafe as LibGtk::NumerableIcon*), icon && (icon.to_unsafe as LibGio::Icon*))
      __return_value
    end

    def background_icon_name=(icon_name)
      __return_value = LibGtk.numerable_icon_set_background_icon_name((to_unsafe as LibGtk::NumerableIcon*), icon_name && icon_name)
      __return_value
    end

    def count=(count)
      __return_value = LibGtk.numerable_icon_set_count((to_unsafe as LibGtk::NumerableIcon*), Int32.new(count))
      __return_value
    end

    def label=(label)
      __return_value = LibGtk.numerable_icon_set_label((to_unsafe as LibGtk::NumerableIcon*), label && label)
      __return_value
    end

    def style_context=(style)
      __return_value = LibGtk.numerable_icon_set_style_context((to_unsafe as LibGtk::NumerableIcon*), (style.to_unsafe as LibGtk::StyleContext*))
      __return_value
    end

  end
end

