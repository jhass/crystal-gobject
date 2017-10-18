module Pango
  class AttrList
    include GObject::WrappedType

    @pango_attr_list : LibPango::AttrList*?
    def initialize(@pango_attr_list : LibPango::AttrList*)
    end

    def to_unsafe
      @pango_attr_list.not_nil!
    end

    def self.new : self
      __return_value = LibPango.attr_list_new
      cast Pango::AttrList.new(__return_value)
    end

    def change(attr)
      LibPango.attr_list_change(to_unsafe.as(LibPango::AttrList*), attr.to_unsafe.as(LibPango::Attribute*))
      nil
    end

    def copy
      __return_value = LibPango.attr_list_copy(to_unsafe.as(LibPango::AttrList*))
      Pango::AttrList.new(__return_value) if __return_value
    end

    def filter(func, data)
      __return_value = LibPango.attr_list_filter(to_unsafe.as(LibPango::AttrList*), func, data ? data : nil)
      Pango::AttrList.new(__return_value) if __return_value
    end

    def insert(attr)
      LibPango.attr_list_insert(to_unsafe.as(LibPango::AttrList*), attr.to_unsafe.as(LibPango::Attribute*))
      nil
    end

    def insert_before(attr)
      LibPango.attr_list_insert_before(to_unsafe.as(LibPango::AttrList*), attr.to_unsafe.as(LibPango::Attribute*))
      nil
    end

    def ref
      __return_value = LibPango.attr_list_ref(to_unsafe.as(LibPango::AttrList*))
      Pango::AttrList.new(__return_value)
    end

    def splice(other, pos, len)
      LibPango.attr_list_splice(to_unsafe.as(LibPango::AttrList*), other.to_unsafe.as(LibPango::AttrList*), Int32.new(pos), Int32.new(len))
      nil
    end

    def unref
      LibPango.attr_list_unref(to_unsafe.as(LibPango::AttrList*))
      nil
    end

  end
end

