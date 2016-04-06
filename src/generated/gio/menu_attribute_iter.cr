module Gio
  class MenuAttributeIter < GObject::Object
    def initialize(@gio_menu_attribute_iter)
    end

    def to_unsafe
      @gio_menu_attribute_iter.not_nil!
    end

    def name
      __return_value = LibGio.menu_attribute_iter_get_name((to_unsafe as LibGio::MenuAttributeIter*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def next(out_name, value)
      __return_value = LibGio.menu_attribute_iter_get_next((to_unsafe as LibGio::MenuAttributeIter*), out_name, (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def value
      __return_value = LibGio.menu_attribute_iter_get_value((to_unsafe as LibGio::MenuAttributeIter*))
      GLib::Variant.new(__return_value)
    end

    def next
      __return_value = LibGio.menu_attribute_iter_next((to_unsafe as LibGio::MenuAttributeIter*))
      __return_value
    end

  end
end

