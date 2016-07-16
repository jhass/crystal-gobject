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
      @gio_d_bus_subtree_v_table.not_nil!
    end

    def enumerate
      (to_unsafe.value.enumerate)
    end

    def enumerate=(value : Void*)
      to_unsafe.value.enumerate = value
    end

    def introspect
      (to_unsafe.value.introspect)
    end

    def introspect=(value : Gio::DBusSubtreeIntrospectFunc)
      to_unsafe.value.introspect = value
    end

    def dispatch
      (to_unsafe.value.dispatch)
    end

    def dispatch=(value : Gio::DBusSubtreeDispatchFunc)
      to_unsafe.value.dispatch = value
    end

    def padding
      PointerIterator.new((to_unsafe.value.padding)) {|__item| __item }
    end

  end
end

