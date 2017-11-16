module Gio
  class MenuLinkIter < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::MenuLinkIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MenuLinkIter*)
    end

    def name
      __return_value = LibGio.menu_link_iter_get_name(@pointer.as(LibGio::MenuLinkIter*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def next(out_link, value)
      __return_value = LibGio.menu_link_iter_get_next(@pointer.as(LibGio::MenuLinkIter*), out_link, value)
      __return_value
    end

    def value
      __return_value = LibGio.menu_link_iter_get_value(@pointer.as(LibGio::MenuLinkIter*))
      Gio::MenuModel.new(__return_value)
    end

    def next
      __return_value = LibGio.menu_link_iter_next(@pointer.as(LibGio::MenuLinkIter*))
      __return_value
    end

  end
end

