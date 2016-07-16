module Gio
  class DBusSubtreeVTable
    include GObject::WrappedType

    def self.new(enumerate : Void*|Nil = nil, introspect : Gio::DBusSubtreeIntrospectFunc|Nil = nil, dispatch : Gio::DBusSubtreeDispatchFunc|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(88, 0u8)
      new(ptr.as(LibGio::DBusSubtreeVTable*)).tap do |object|
        object.enumerate = enumerate unless enumerate.nil?
        object.introspect = introspect unless introspect.nil?
        object.dispatch = dispatch unless dispatch.nil?
      end
    end

    @gio_d_bus_subtree_v_table : LibGio::DBusSubtreeVTable*?
    def initialize(@gio_d_bus_subtree_v_table : LibGio::DBusSubtreeVTable*)
    end

    def to_unsafe
      @gio_d_bus_subtree_v_table.not_nil!.as(Void*)
    end

    def enumerate
      (to_unsafe.as(LibGio::DBusSubtreeVTable*).value.enumerate)
    end

    def enumerate=(value : Void*)
      to_unsafe.as(LibGio::DBusSubtreeVTable*).value.enumerate = value
    end

    def introspect
      (to_unsafe.as(LibGio::DBusSubtreeVTable*).value.introspect)
    end

    def introspect=(value : Gio::DBusSubtreeIntrospectFunc)
      to_unsafe.as(LibGio::DBusSubtreeVTable*).value.introspect = value
    end

    def dispatch
      (to_unsafe.as(LibGio::DBusSubtreeVTable*).value.dispatch)
    end

    def dispatch=(value : Gio::DBusSubtreeDispatchFunc)
      to_unsafe.as(LibGio::DBusSubtreeVTable*).value.dispatch = value
    end

    def padding
      PointerIterator.new((to_unsafe.as(LibGio::DBusSubtreeVTable*).value.padding)) {|__item| __item }
    end

  end
end

