module Pango
  class TabArray
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibPango::TabArray*))
    end

    @pango_tab_array : LibPango::TabArray*?
    def initialize(@pango_tab_array : LibPango::TabArray*)
    end

    def to_unsafe
      @pango_tab_array.not_nil!.as(Void*)
    end

    def self.new(initial_size, positions_in_pixels) : self
      __return_value = LibPango.tab_array_new(Int32.new(initial_size), positions_in_pixels)
      cast Pango::TabArray.new(__return_value)
    end

    def copy
      __return_value = LibPango.tab_array_copy(to_unsafe.as(LibPango::TabArray*))
      Pango::TabArray.new(__return_value)
    end

    def free
      __return_value = LibPango.tab_array_free(to_unsafe.as(LibPango::TabArray*))
      __return_value
    end

    def positions_in_pixels
      __return_value = LibPango.tab_array_get_positions_in_pixels(to_unsafe.as(LibPango::TabArray*))
      __return_value
    end

    def size
      __return_value = LibPango.tab_array_get_size(to_unsafe.as(LibPango::TabArray*))
      __return_value
    end

    def tab(tab_index, alignment, location)
      __return_value = LibPango.tab_array_get_tab(to_unsafe.as(LibPango::TabArray*), Int32.new(tab_index), alignment, location)
      __return_value
    end

    def tabs(alignments, locations)
      __return_value = LibPango.tab_array_get_tabs(to_unsafe.as(LibPango::TabArray*), alignments, locations)
      __return_value
    end

    def resize(new_size)
      __return_value = LibPango.tab_array_resize(to_unsafe.as(LibPango::TabArray*), Int32.new(new_size))
      __return_value
    end

    def set_tab(tab_index, alignment, location)
      __return_value = LibPango.tab_array_set_tab(to_unsafe.as(LibPango::TabArray*), Int32.new(tab_index), alignment, Int32.new(location))
      __return_value
    end

  end
end

