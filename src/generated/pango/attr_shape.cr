module Pango
  class AttrShape
    include GObject::WrappedType

    def self.new(attr : Pango::Attribute|Nil = nil, ink_rect : Pango::Rectangle|Nil = nil, logical_rect : Pango::Rectangle|Nil = nil, data : Void*|Nil = nil, copy_func : Pango::AttrDataCopyFunc|Nil = nil, destroy_func : GLib::DestroyNotify|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(72, 0u8)
      new(ptr.as(LibPango::AttrShape*)).tap do |object|
        object.attr = attr unless attr.nil?
        object.ink_rect = ink_rect unless ink_rect.nil?
        object.logical_rect = logical_rect unless logical_rect.nil?
        object.data = data unless data.nil?
        object.copy_func = copy_func unless copy_func.nil?
        object.destroy_func = destroy_func unless destroy_func.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::AttrShape*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrShape*)
    end

    def attr
      Pango::Attribute.new((to_unsafe.as(LibPango::AttrShape*).value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.as(LibPango::AttrShape*).value.attr = value
    end

    def ink_rect
      Pango::Rectangle.new((to_unsafe.as(LibPango::AttrShape*).value.ink_rect))
    end

    def ink_rect=(value : Pango::Rectangle)
      to_unsafe.as(LibPango::AttrShape*).value.ink_rect = value
    end

    def logical_rect
      Pango::Rectangle.new((to_unsafe.as(LibPango::AttrShape*).value.logical_rect))
    end

    def logical_rect=(value : Pango::Rectangle)
      to_unsafe.as(LibPango::AttrShape*).value.logical_rect = value
    end

    def data
      (to_unsafe.as(LibPango::AttrShape*).value.data)
    end

    def data=(value : Void*)
      to_unsafe.as(LibPango::AttrShape*).value.data = value
    end

    def copy_func
      (to_unsafe.as(LibPango::AttrShape*).value.copy_func)
    end

    def copy_func=(value : Pango::AttrDataCopyFunc)
      to_unsafe.as(LibPango::AttrShape*).value.copy_func = value
    end

    def destroy_func
      (to_unsafe.as(LibPango::AttrShape*).value.destroy_func)
    end

    def destroy_func=(value : GLib::DestroyNotify)
      to_unsafe.as(LibPango::AttrShape*).value.destroy_func = value
    end

  end
end

