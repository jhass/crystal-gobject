module Gio
  class MenuAttributeIter < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::MenuAttributeIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MenuAttributeIter*)
    end

    def name
      __return_value = LibGio.menu_attribute_iter_get_name(@pointer.as(LibGio::MenuAttributeIter*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def next(out_name, value)
      __return_value = LibGio.menu_attribute_iter_get_next(@pointer.as(LibGio::MenuAttributeIter*), out_name, value)
      __return_value
    end

    def value
      __return_value = LibGio.menu_attribute_iter_get_value(@pointer.as(LibGio::MenuAttributeIter*))
      GLib::Variant.new(__return_value)
    end

    def next
      __return_value = LibGio.menu_attribute_iter_next(@pointer.as(LibGio::MenuAttributeIter*))
      __return_value
    end

  end
end

