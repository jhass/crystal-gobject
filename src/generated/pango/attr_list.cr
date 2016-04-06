module Pango
  class AttrList
    include GObject::WrappedType

    def initialize(@pango_attr_list)
    end

    def to_unsafe
      @pango_attr_list.not_nil!
    end

    def self.new_internal
      __return_value = LibPango.attr_list_new
      Pango::AttrList.new(__return_value)
    end

    def change(attr)
      __return_value = LibPango.attr_list_change((to_unsafe as LibPango::AttrList*), (attr.to_unsafe as LibPango::Attribute*))
      __return_value
    end

    def copy
      __return_value = LibPango.attr_list_copy((to_unsafe as LibPango::AttrList*))
      Pango::AttrList.new(__return_value) if __return_value
    end

    def filter(func : LibPango::AttrFilterFunc, data)
      __return_value = LibPango.attr_list_filter((to_unsafe as LibPango::AttrList*), func, data)
      Pango::AttrList.new(__return_value) if __return_value
    end

    def insert(attr)
      __return_value = LibPango.attr_list_insert((to_unsafe as LibPango::AttrList*), (attr.to_unsafe as LibPango::Attribute*))
      __return_value
    end

    def insert_before(attr)
      __return_value = LibPango.attr_list_insert_before((to_unsafe as LibPango::AttrList*), (attr.to_unsafe as LibPango::Attribute*))
      __return_value
    end

    def ref
      __return_value = LibPango.attr_list_ref((to_unsafe as LibPango::AttrList*))
      Pango::AttrList.new(__return_value)
    end

    def splice(other, pos, len)
      __return_value = LibPango.attr_list_splice((to_unsafe as LibPango::AttrList*), (other.to_unsafe as LibPango::AttrList*), Int32.new(pos), Int32.new(len))
      __return_value
    end

    def unref
      __return_value = LibPango.attr_list_unref((to_unsafe as LibPango::AttrList*))
      __return_value
    end

  end
end

