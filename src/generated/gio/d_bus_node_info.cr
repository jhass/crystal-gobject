module Gio
  class DBusNodeInfo
    include GObject::WrappedType

    def self.new(ref_count : Int32|Nil = nil, path : String|Nil = nil, interfaces : Array(Gio::DBusInterfaceInfo)|Nil = nil, nodes : Array(Gio::DBusNodeInfo)|Nil = nil, annotations : Array(Gio::DBusAnnotationInfo)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGio::DBusNodeInfo*)).tap do |object|
        object.ref_count = ref_count unless ref_count.nil?
        object.path = path unless path.nil?
        object.interfaces = interfaces unless interfaces.nil?
        object.nodes = nodes unless nodes.nil?
        object.annotations = annotations unless annotations.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGio::DBusNodeInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusNodeInfo*)
    end

    def self.new_for_xml(xml_data) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_node_info_new_for_xml(xml_data.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusNodeInfo.new(__return_value)
    end

    def generate_xml(indent, string_builder)
      LibGio.d_bus_node_info_generate_xml(@pointer.as(LibGio::DBusNodeInfo*), UInt32.new(indent), string_builder.to_unsafe.as(LibGLib::String*))
      nil
    end

    def lookup_interface(name)
      __return_value = LibGio.d_bus_node_info_lookup_interface(@pointer.as(LibGio::DBusNodeInfo*), name.to_unsafe)
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def ref
      __return_value = LibGio.d_bus_node_info_ref(@pointer.as(LibGio::DBusNodeInfo*))
      Gio::DBusNodeInfo.new(__return_value)
    end

    def unref
      LibGio.d_bus_node_info_unref(@pointer.as(LibGio::DBusNodeInfo*))
      nil
    end

    def ref_count
      (to_unsafe.as(LibGio::DBusNodeInfo*).value.ref_count)
    end

    def ref_count=(value : Int32)
      to_unsafe.as(LibGio::DBusNodeInfo*).value.ref_count = Int32.new(value)
    end

    def path
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::DBusNodeInfo*).value.path); ::String.new((to_unsafe.as(LibGio::DBusNodeInfo*).value.path)))
    end

    def path=(value : String)
      to_unsafe.as(LibGio::DBusNodeInfo*).value.path = value.to_unsafe
    end

    def interfaces
      PointerIterator.new((to_unsafe.as(LibGio::DBusNodeInfo*).value.interfaces)) {|__item| Gio::DBusInterfaceInfo.new(__item) }
    end

    def interfaces=(value : Array(Gio::DBusInterfaceInfo))
      to_unsafe.as(LibGio::DBusNodeInfo*).value.interfaces = value
    end

    def nodes
      PointerIterator.new((to_unsafe.as(LibGio::DBusNodeInfo*).value.nodes)) {|__item| Gio::DBusNodeInfo.new(__item) }
    end

    def nodes=(value : Array(Gio::DBusNodeInfo))
      to_unsafe.as(LibGio::DBusNodeInfo*).value.nodes = value
    end

    def annotations
      PointerIterator.new((to_unsafe.as(LibGio::DBusNodeInfo*).value.annotations)) {|__item| Gio::DBusAnnotationInfo.new(__item) }
    end

    def annotations=(value : Array(Gio::DBusAnnotationInfo))
      to_unsafe.as(LibGio::DBusNodeInfo*).value.annotations = value
    end

  end
end

