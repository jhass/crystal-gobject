module Pango
  class TabArray
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::TabArray*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::TabArray*)
    end

    def self.new(initial_size, positions_in_pixels) : self
      __return_value = LibPango.tab_array_new(Int32.new(initial_size), positions_in_pixels)
      cast Pango::TabArray.new(__return_value)
    end

    def copy
      __return_value = LibPango.tab_array_copy(@pointer.as(LibPango::TabArray*))
      Pango::TabArray.new(__return_value)
    end

    def free
      LibPango.tab_array_free(@pointer.as(LibPango::TabArray*))
      nil
    end

    def positions_in_pixels
      __return_value = LibPango.tab_array_get_positions_in_pixels(@pointer.as(LibPango::TabArray*))
      __return_value
    end

    def size
      __return_value = LibPango.tab_array_get_size(@pointer.as(LibPango::TabArray*))
      __return_value
    end

    def tab(tab_index, alignment : Pango::TabAlign?, location)
      LibPango.tab_array_get_tab(@pointer.as(LibPango::TabArray*), Int32.new(tab_index), alignment, location)
      nil
    end

    def tabs(alignments : Pango::TabAlign?, locations)
      LibPango.tab_array_get_tabs(@pointer.as(LibPango::TabArray*), alignments, locations)
      nil
    end

    def resize(new_size)
      LibPango.tab_array_resize(@pointer.as(LibPango::TabArray*), Int32.new(new_size))
      nil
    end

    def set_tab(tab_index, alignment : Pango::TabAlign, location)
      LibPango.tab_array_set_tab(@pointer.as(LibPango::TabArray*), Int32.new(tab_index), alignment, Int32.new(location))
      nil
    end

  end
end

