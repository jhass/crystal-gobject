module Atk
  module Component
    def contains(x, y, coord_type : Atk::CoordType)
      __return_value = LibAtk.component_contains(@pointer.as(LibAtk::Component*), Int32.new(x), Int32.new(y), coord_type)
      __return_value
    end

    def alpha
      __return_value = LibAtk.component_get_alpha(@pointer.as(LibAtk::Component*))
      __return_value
    end

    def extents(x, y, width, height, coord_type : Atk::CoordType)
      LibAtk.component_get_extents(@pointer.as(LibAtk::Component*), x, y, width, height, coord_type)
      nil
    end

    def layer
      __return_value = LibAtk.component_get_layer(@pointer.as(LibAtk::Component*))
      __return_value
    end

    def mdi_zorder
      __return_value = LibAtk.component_get_mdi_zorder(@pointer.as(LibAtk::Component*))
      __return_value
    end

    def position(x, y, coord_type : Atk::CoordType)
      LibAtk.component_get_position(@pointer.as(LibAtk::Component*), x, y, coord_type)
      nil
    end

    def size(width, height)
      LibAtk.component_get_size(@pointer.as(LibAtk::Component*), width, height)
      nil
    end

    def grab_focus
      __return_value = LibAtk.component_grab_focus(@pointer.as(LibAtk::Component*))
      __return_value
    end

    def ref_accessible_at_point(x, y, coord_type : Atk::CoordType)
      __return_value = LibAtk.component_ref_accessible_at_point(@pointer.as(LibAtk::Component*), Int32.new(x), Int32.new(y), coord_type)
      Atk::Object.new(__return_value) if __return_value
    end

    def remove_focus_handler(handler_id)
      LibAtk.component_remove_focus_handler(@pointer.as(LibAtk::Component*), UInt32.new(handler_id))
      nil
    end

    def scroll_to(type : Atk::ScrollType)
      __return_value = LibAtk.component_scroll_to(@pointer.as(LibAtk::Component*), type)
      __return_value
    end

    def scroll_to_point(coords : Atk::CoordType, x, y)
      __return_value = LibAtk.component_scroll_to_point(@pointer.as(LibAtk::Component*), coords, Int32.new(x), Int32.new(y))
      __return_value
    end

    def set_extents(x, y, width, height, coord_type : Atk::CoordType)
      __return_value = LibAtk.component_set_extents(@pointer.as(LibAtk::Component*), Int32.new(x), Int32.new(y), Int32.new(width), Int32.new(height), coord_type)
      __return_value
    end

    def set_position(x, y, coord_type : Atk::CoordType)
      __return_value = LibAtk.component_set_position(@pointer.as(LibAtk::Component*), Int32.new(x), Int32.new(y), coord_type)
      __return_value
    end

    def set_size(width, height)
      __return_value = LibAtk.component_set_size(@pointer.as(LibAtk::Component*), Int32.new(width), Int32.new(height))
      __return_value
    end

    alias BoundsChangedSignal = Component, Atk::Rectangle ->
    def on_bounds_changed(&__block : BoundsChangedSignal)
      __callback = ->(_arg0 : LibAtk::Component*, _arg1 : LibAtk::LibAtk::Rectangle*) {
       __return_value = __block.call(Component.new(_arg0), Atk::Rectangle.new(_arg1))
       __return_value
      }
      connect("bounds-changed", __callback)
    end

  end
end

