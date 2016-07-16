module Gio
  class DBusInterfaceInfo
    include GObject::WrappedType

    def self.new(ref_count : Int32|Nil = nil, name : String|Nil = nil, methods : Array(Gio::DBusMethodInfo)|Nil = nil, signals : Array(Gio::DBusSignalInfo)|Nil = nil, properties : Array(Gio::DBusPropertyInfo)|Nil = nil, annotations : Array(Gio::DBusAnnotationInfo)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGio::DBusInterfaceInfo*)).tap do |object|
        object.ref_count = ref_count unless ref_count.nil?
        object.name = name unless name.nil?
        object.methods = methods unless methods.nil?
        object.signals = signals unless signals.nil?
        object.properties = properties unless properties.nil?
        object.annotations = annotations unless annotations.nil?
      end
    end

    @gio_d_bus_interface_info : LibGio::DBusInterfaceInfo*?
    def initialize(@gio_d_bus_interface_info : LibGio::DBusInterfaceInfo*)
    end

    def to_unsafe
      @gio_d_bus_interface_info.not_nil!.as(Void*)
    end

    def cache_build
      __return_value = LibGio.d_bus_interface_info_cache_build(to_unsafe.as(LibGio::DBusInterfaceInfo*))
      __return_value
    end

    def cache_release
      __return_value = LibGio.d_bus_interface_info_cache_release(to_unsafe.as(LibGio::DBusInterfaceInfo*))
      __return_value
    end

    def generate_xml(indent, string_builder)
      __return_value = LibGio.d_bus_interface_info_generate_xml(to_unsafe.as(LibGio::DBusInterfaceInfo*), UInt32.new(indent), string_builder)
      __return_value
    end

    def lookup_method(name)
      __return_value = LibGio.d_bus_interface_info_lookup_method(to_unsafe.as(LibGio::DBusInterfaceInfo*), name.to_unsafe)
      Gio::DBusMethodInfo.new(__return_value)
    end

    def lookup_property(name)
      __return_value = LibGio.d_bus_interface_info_lookup_property(to_unsafe.as(LibGio::DBusInterfaceInfo*), name.to_unsafe)
      Gio::DBusPropertyInfo.new(__return_value)
    end

    def lookup_signal(name)
      __return_value = LibGio.d_bus_interface_info_lookup_signal(to_unsafe.as(LibGio::DBusInterfaceInfo*), name.to_unsafe)
      Gio::DBusSignalInfo.new(__return_value)
    end

    def ref
      __return_value = LibGio.d_bus_interface_info_ref(to_unsafe.as(LibGio::DBusInterfaceInfo*))
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def unref
      __return_value = LibGio.d_bus_interface_info_unref(to_unsafe.as(LibGio::DBusInterfaceInfo*))
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

    def methods
      PointerIterator.new((to_unsafe.value.methods)) {|__item| Gio::DBusMethodInfo.new(__item) }
    end

    def methods=(value : Array(Gio::DBusMethodInfo))
      to_unsafe.value.methods = value
    end

    def signals
      PointerIterator.new((to_unsafe.value.signals)) {|__item| Gio::DBusSignalInfo.new(__item) }
    end

    def signals=(value : Array(Gio::DBusSignalInfo))
      to_unsafe.value.signals = value
    end

    def properties
      PointerIterator.new((to_unsafe.value.properties)) {|__item| Gio::DBusPropertyInfo.new(__item) }
    end

    def properties=(value : Array(Gio::DBusPropertyInfo))
      to_unsafe.value.properties = value
    end

    def annotations
      PointerIterator.new((to_unsafe.value.annotations)) {|__item| Gio::DBusAnnotationInfo.new(__item) }
    end

    def annotations=(value : Array(Gio::DBusAnnotationInfo))
      to_unsafe.value.annotations = value
    end

  end
end

