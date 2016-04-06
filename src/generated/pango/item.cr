module Pango
  class Item
    include GObject::WrappedType

    def initialize(@pango_item)
    end

    def to_unsafe
      @pango_item.not_nil!
    end

    def self.new_internal
      __return_value = LibPango.item_new
      Pango::Item.new(__return_value)
    end

    def copy
      __return_value = LibPango.item_copy((to_unsafe as LibPango::Item*))
      Pango::Item.new(__return_value) if __return_value
    end

    def free
      __return_value = LibPango.item_free((to_unsafe as LibPango::Item*))
      __return_value
    end

    def split(split_index, split_offset)
      __return_value = LibPango.item_split((to_unsafe as LibPango::Item*), Int32.new(split_index), Int32.new(split_offset))
      Pango::Item.new(__return_value)
    end

  end
end

