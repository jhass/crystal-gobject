module Pango
  class AttrList
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::AttrList*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrList*)
    end

    def self.new : self
      __return_value = LibPango.attr_list_new
      cast Pango::AttrList.new(__return_value)
    end

    def change(attr)
      LibPango.attr_list_change(@pointer.as(LibPango::AttrList*), attr.to_unsafe.as(LibPango::Attribute*))
      nil
    end

    def copy
      __return_value = LibPango.attr_list_copy(@pointer.as(LibPango::AttrList*))
      Pango::AttrList.new(__return_value) if __return_value
    end

    def filter(func, data)
      __return_value = LibPango.attr_list_filter(@pointer.as(LibPango::AttrList*), func, data ? data : nil)
      Pango::AttrList.new(__return_value) if __return_value
    end

    def insert(attr)
      LibPango.attr_list_insert(@pointer.as(LibPango::AttrList*), attr.to_unsafe.as(LibPango::Attribute*))
      nil
    end

    def insert_before(attr)
      LibPango.attr_list_insert_before(@pointer.as(LibPango::AttrList*), attr.to_unsafe.as(LibPango::Attribute*))
      nil
    end

    def ref
      __return_value = LibPango.attr_list_ref(@pointer.as(LibPango::AttrList*))
      Pango::AttrList.new(__return_value)
    end

    def splice(other, pos, len)
      LibPango.attr_list_splice(@pointer.as(LibPango::AttrList*), other.to_unsafe.as(LibPango::AttrList*), Int32.new(pos), Int32.new(len))
      nil
    end

    def unref
      LibPango.attr_list_unref(@pointer.as(LibPango::AttrList*))
      nil
    end

  end
end

