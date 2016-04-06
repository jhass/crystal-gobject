module Gio
  class DBusAnnotationInfo
    include GObject::WrappedType

    def initialize(@gio_d_bus_annotation_info)
    end

    def to_unsafe
      @gio_d_bus_annotation_info.not_nil!
    end

    def ref
      __return_value = LibGio.d_bus_annotation_info_ref((to_unsafe as LibGio::DBusAnnotationInfo*))
      Gio::DBusAnnotationInfo.new(__return_value)
    end

    def unref
      __return_value = LibGio.d_bus_annotation_info_unref((to_unsafe as LibGio::DBusAnnotationInfo*))
      __return_value
    end

    def self.lookup(annotations, name)
      __return_value = LibGio.d_bus_annotation_info_lookup(annotations && annotations, name)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

  end
end

