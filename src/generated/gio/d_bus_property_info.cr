module Gio
  class DBusPropertyInfo
    include GObject::WrappedType

    def self.new(ref_count : Int32|Nil = nil, name : String|Nil = nil, signature : String|Nil = nil, flags : Gio::DBusPropertyInfoFlags|Nil = nil, annotations : Array(Gio::DBusAnnotationInfo)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGio::DBusPropertyInfo*)).tap do |object|
        object.ref_count = ref_count unless ref_count.nil?
        object.name = name unless name.nil?
        object.signature = signature unless signature.nil?
        object.flags = flags unless flags.nil?
        object.annotations = annotations unless annotations.nil?
      end
    end

    @gio_d_bus_property_info : LibGio::DBusPropertyInfo*?
    def initialize(@gio_d_bus_property_info : LibGio::DBusPropertyInfo*)
    end

    def to_unsafe
      @gio_d_bus_property_info.not_nil!.as(Void*)
    end

    def ref
      __return_value = LibGio.d_bus_property_info_ref(to_unsafe.as(LibGio::DBusPropertyInfo*))
      Gio::DBusPropertyInfo.new(__return_value)
    end

    def unref
      __return_value = LibGio.d_bus_property_info_unref(to_unsafe.as(LibGio::DBusPropertyInfo*))
      __return_value
    end

    def ref_count
      (to_unsafe.as(LibGio::DBusPropertyInfo*).value.ref_count)
    end

    def ref_count=(value : Int32)
      to_unsafe.as(LibGio::DBusPropertyInfo*).value.ref_count = Int32.new(value)
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::DBusPropertyInfo*).value.name); ::String.new((to_unsafe.as(LibGio::DBusPropertyInfo*).value.name)))
    end

    def name=(value : String)
      to_unsafe.as(LibGio::DBusPropertyInfo*).value.name = value.to_unsafe
    end

    def signature
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::DBusPropertyInfo*).value.signature); ::String.new((to_unsafe.as(LibGio::DBusPropertyInfo*).value.signature)))
    end

    def signature=(value : String)
      to_unsafe.as(LibGio::DBusPropertyInfo*).value.signature = value.to_unsafe
    end

    def flags
      (to_unsafe.as(LibGio::DBusPropertyInfo*).value.flags)
    end

    def flags=(value : Gio::DBusPropertyInfoFlags)
      to_unsafe.as(LibGio::DBusPropertyInfo*).value.flags = value
    end

    def annotations
      PointerIterator.new((to_unsafe.as(LibGio::DBusPropertyInfo*).value.annotations)) {|__item| Gio::DBusAnnotationInfo.new(__item) }
    end

    def annotations=(value : Array(Gio::DBusAnnotationInfo))
      to_unsafe.as(LibGio::DBusPropertyInfo*).value.annotations = value
    end

  end
end

