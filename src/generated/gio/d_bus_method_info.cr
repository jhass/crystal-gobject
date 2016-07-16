module Gio
  class DBusMethodInfo
    include GObject::WrappedType

    def self.new(ref_count : Int32|Nil = nil, name : String|Nil = nil, in_args : Array(Gio::DBusArgInfo)|Nil = nil, out_args : Array(Gio::DBusArgInfo)|Nil = nil, annotations : Array(Gio::DBusAnnotationInfo)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGio::DBusMethodInfo*)).tap do |object|
        object.ref_count = ref_count unless ref_count.nil?
        object.name = name unless name.nil?
        object.in_args = in_args unless in_args.nil?
        object.out_args = out_args unless out_args.nil?
        object.annotations = annotations unless annotations.nil?
      end
    end

    @gio_d_bus_method_info : LibGio::DBusMethodInfo*?
    def initialize(@gio_d_bus_method_info : LibGio::DBusMethodInfo*)
    end

    def to_unsafe
      @gio_d_bus_method_info.not_nil!
    end

    def ref
      __return_value = LibGio.d_bus_method_info_ref(to_unsafe.as(LibGio::DBusMethodInfo*))
      Gio::DBusMethodInfo.new(__return_value)
    end

    def unref
      __return_value = LibGio.d_bus_method_info_unref(to_unsafe.as(LibGio::DBusMethodInfo*))
      __return_value
    end

    def ref_count
      (to_unsafe.value.ref_count)
    end

    def ref_count=(value : Int32)
      to_unsafe.value.ref_count = Int32.new(value)
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.value.name); ::String.new((to_unsafe.value.name)))
    end

    def name=(value : String)
      to_unsafe.value.name = value.to_unsafe
    end

    def in_args
      PointerIterator.new((to_unsafe.value.in_args)) {|__item| Gio::DBusArgInfo.new(__item) }
    end

    def in_args=(value : Array(Gio::DBusArgInfo))
      to_unsafe.value.in_args = value
    end

    def out_args
      PointerIterator.new((to_unsafe.value.out_args)) {|__item| Gio::DBusArgInfo.new(__item) }
    end

    def out_args=(value : Array(Gio::DBusArgInfo))
      to_unsafe.value.out_args = value
    end

    def annotations
      PointerIterator.new((to_unsafe.value.annotations)) {|__item| Gio::DBusAnnotationInfo.new(__item) }
    end

    def annotations=(value : Array(Gio::DBusAnnotationInfo))
      to_unsafe.value.annotations = value
    end

  end
end

