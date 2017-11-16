module Gio
  class DBusAnnotationInfo
    include GObject::WrappedType

    def self.new(ref_count : Int32|Nil = nil, key : String|Nil = nil, value : String|Nil = nil, annotations : Array(Gio::DBusAnnotationInfo)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGio::DBusAnnotationInfo*)).tap do |object|
        object.ref_count = ref_count unless ref_count.nil?
        object.key = key unless key.nil?
        object.value = value unless value.nil?
        object.annotations = annotations unless annotations.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGio::DBusAnnotationInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusAnnotationInfo*)
    end

    def ref
      __return_value = LibGio.d_bus_annotation_info_ref(@pointer.as(LibGio::DBusAnnotationInfo*))
      Gio::DBusAnnotationInfo.new(__return_value)
    end

    def unref
      LibGio.d_bus_annotation_info_unref(@pointer.as(LibGio::DBusAnnotationInfo*))
      nil
    end

    def self.lookup(annotations, name)
      __return_value = LibGio.d_bus_annotation_info_lookup(annotations ? annotations : nil, name.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def ref_count
      (to_unsafe.as(LibGio::DBusAnnotationInfo*).value.ref_count)
    end

    def ref_count=(value : Int32)
      to_unsafe.as(LibGio::DBusAnnotationInfo*).value.ref_count = Int32.new(value)
    end

    def key
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::DBusAnnotationInfo*).value.key); ::String.new((to_unsafe.as(LibGio::DBusAnnotationInfo*).value.key)))
    end

    def key=(value : String)
      to_unsafe.as(LibGio::DBusAnnotationInfo*).value.key = value.to_unsafe
    end

    def value
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::DBusAnnotationInfo*).value.value); ::String.new((to_unsafe.as(LibGio::DBusAnnotationInfo*).value.value)))
    end

    def value=(value : String)
      to_unsafe.as(LibGio::DBusAnnotationInfo*).value.value = value.to_unsafe
    end

    def annotations
      PointerIterator.new((to_unsafe.as(LibGio::DBusAnnotationInfo*).value.annotations)) {|__item| Gio::DBusAnnotationInfo.new(__item) }
    end

    def annotations=(value : Array(Gio::DBusAnnotationInfo))
      to_unsafe.as(LibGio::DBusAnnotationInfo*).value.annotations = value
    end

  end
end

