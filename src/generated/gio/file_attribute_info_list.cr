module Gio
  class FileAttributeInfoList
    include GObject::WrappedType

    def initialize(@gio_file_attribute_info_list)
    end

    def to_unsafe
      @gio_file_attribute_info_list.not_nil!
    end

    def self.new_internal
      __return_value = LibGio.file_attribute_info_list_new
      Gio::FileAttributeInfoList.new(__return_value)
    end

    def add(name, type, flags)
      __return_value = LibGio.file_attribute_info_list_add((to_unsafe as LibGio::FileAttributeInfoList*), name, type, flags)
      __return_value
    end

    def dup
      __return_value = LibGio.file_attribute_info_list_dup((to_unsafe as LibGio::FileAttributeInfoList*))
      Gio::FileAttributeInfoList.new(__return_value)
    end

    def lookup(name)
      __return_value = LibGio.file_attribute_info_list_lookup((to_unsafe as LibGio::FileAttributeInfoList*), name)
      Gio::FileAttributeInfo.new(__return_value)
    end

    def ref
      __return_value = LibGio.file_attribute_info_list_ref((to_unsafe as LibGio::FileAttributeInfoList*))
      Gio::FileAttributeInfoList.new(__return_value)
    end

    def unref
      __return_value = LibGio.file_attribute_info_list_unref((to_unsafe as LibGio::FileAttributeInfoList*))
      __return_value
    end

  end
end

