module Atk
  module Component
    def contains(x, y, coord_type)
      __return_value = LibAtk.component_contains((to_unsafe as LibAtk::Component*), Int32.cast(x), Int32.cast(y), coord_type)
      __return_value
    end

    def alpha
      __return_value = LibAtk.component_get_alpha((to_unsafe as LibAtk::Component*))
      __return_value
    end

    def extents(x, y, width, height, coord_type)
      __return_value = LibAtk.component_get_extents((to_unsafe as LibAtk::Component*), x, y, width, height, coord_type)
      __return_value
    end

    def layer
      __return_value = LibAtk.component_get_layer((to_unsafe as LibAtk::Component*))
      __return_value
    end

    def mdi_zorder
      __return_value = LibAtk.component_get_mdi_zorder((to_unsafe as LibAtk::Component*))
      __return_value
    end

    def position(x, y, coord_type)
      __return_value = LibAtk.component_get_position((to_unsafe as LibAtk::Component*), x, y, coord_type)
      __return_value
    end

    def size(width, height)
      __return_value = LibAtk.component_get_size((to_unsafe as LibAtk::Component*), width, height)
      __return_value
    end

    def grab_focus
      __return_value = LibAtk.component_grab_focus((to_unsafe as LibAtk::Component*))
      __return_value
    end

    def ref_accessible_at_point(x, y, coord_type)
      __return_value = LibAtk.component_ref_accessible_at_point((to_unsafe as LibAtk::Component*), Int32.cast(x), Int32.cast(y), coord_type)
      Atk::Object.new(__return_value) if __return_value
    end

    def remove_focus_handler(handler_id)
      __return_value = LibAtk.component_remove_focus_handler((to_unsafe as LibAtk::Component*), UInt32.cast(handler_id))
      __return_value
    end

    def set_extents(x, y, width, height, coord_type)
      __return_value = LibAtk.component_set_extents((to_unsafe as LibAtk::Component*), Int32.cast(x), Int32.cast(y), Int32.cast(width), Int32.cast(height), coord_type)
      __return_value
    end

    def set_position(x, y, coord_type)
      __return_value = LibAtk.component_set_position((to_unsafe as LibAtk::Component*), Int32.cast(x), Int32.cast(y), coord_type)
      __return_value
    end

    def set_size(width, height)
      __return_value = LibAtk.component_set_size((to_unsafe as LibAtk::Component*), Int32.cast(width), Int32.cast(height))
      __return_value
    end

  end
end
