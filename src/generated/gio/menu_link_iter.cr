module Gio
  class MenuLinkIter < GObject::Object
    def initialize(@gio_menu_link_iter)
    end

    def to_unsafe
      @gio_menu_link_iter.not_nil!
    end

    def name
      __return_value = LibGio.menu_link_iter_get_name((to_unsafe as LibGio::MenuLinkIter*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def next(out_link, value)
      __return_value = LibGio.menu_link_iter_get_next((to_unsafe as LibGio::MenuLinkIter*), out_link, (value.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def value
      __return_value = LibGio.menu_link_iter_get_value((to_unsafe as LibGio::MenuLinkIter*))
      Gio::MenuModel.new(__return_value)
    end

    def next
      __return_value = LibGio.menu_link_iter_next((to_unsafe as LibGio::MenuLinkIter*))
      __return_value
    end

  end
end

