module Gtk
  class StyleProperties < GObject::Object
    def initialize(@gtk_style_properties)
    end

    def to_unsafe
      @gtk_style_properties.not_nil!
    end

    # Implements StyleProvider
    def self.new_internal
      __return_value = LibGtk.style_properties_new
      Gtk::StyleProperties.new(__return_value)
    end

    def clear
      __return_value = LibGtk.style_properties_clear((to_unsafe as LibGtk::StyleProperties*))
      __return_value
    end

    def property(property, state, value)
      __return_value = LibGtk.style_properties_get_property((to_unsafe as LibGtk::StyleProperties*), property, state, value)
      __return_value
    end

    def lookup_color(name)
      __return_value = LibGtk.style_properties_lookup_color((to_unsafe as LibGtk::StyleProperties*), name)
      Gtk::SymbolicColor.new(__return_value)
    end

    def map_color(name, color)
      __return_value = LibGtk.style_properties_map_color((to_unsafe as LibGtk::StyleProperties*), name, (color.to_unsafe as LibGtk::SymbolicColor*))
      __return_value
    end

    def merge(props_to_merge, replace)
      __return_value = LibGtk.style_properties_merge((to_unsafe as LibGtk::StyleProperties*), (props_to_merge.to_unsafe as LibGtk::StyleProperties*), replace)
      __return_value
    end

    def set_property(property, state, value)
      __return_value = LibGtk.style_properties_set_property((to_unsafe as LibGtk::StyleProperties*), property, state, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def unset_property(property, state)
      __return_value = LibGtk.style_properties_unset_property((to_unsafe as LibGtk::StyleProperties*), property, state)
      __return_value
    end

  end
end

