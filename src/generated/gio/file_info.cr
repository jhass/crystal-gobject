module Gio
  class FileInfo < GObject::Object
    @gio_file_info : LibGio::FileInfo*?
    def initialize(@gio_file_info : LibGio::FileInfo*)
    end

    def to_unsafe
      @gio_file_info.not_nil!
    end

    def self.new : self
      __return_value = LibGio.file_info_new
      cast Gio::FileInfo.new(__return_value)
    end

    def clear_status
      LibGio.file_info_clear_status(to_unsafe.as(LibGio::FileInfo*))
      nil
    end

    def copy_into(dest_info)
      LibGio.file_info_copy_into(to_unsafe.as(LibGio::FileInfo*), dest_info.to_unsafe.as(LibGio::FileInfo*))
      nil
    end

    def dup
      __return_value = LibGio.file_info_dup(to_unsafe.as(LibGio::FileInfo*))
      Gio::FileInfo.new(__return_value)
    end

    def attribute_as_string(attribute)
      __return_value = LibGio.file_info_get_attribute_as_string(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def attribute_boolean(attribute)
      __return_value = LibGio.file_info_get_attribute_boolean(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      __return_value
    end

    def attribute_byte_string(attribute)
      __return_value = LibGio.file_info_get_attribute_byte_string(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def attribute_data(attribute, type : Gio::FileAttributeType?, value_pp, status : Gio::FileAttributeStatus?)
      __return_value = LibGio.file_info_get_attribute_data(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, type, value_pp, status)
      __return_value
    end

    def attribute_int32(attribute)
      __return_value = LibGio.file_info_get_attribute_int32(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      __return_value
    end

    def attribute_int64(attribute)
      __return_value = LibGio.file_info_get_attribute_int64(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      __return_value
    end

    def attribute_object(attribute)
      __return_value = LibGio.file_info_get_attribute_object(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      GObject::Object.new(__return_value)
    end

    def attribute_status(attribute)
      __return_value = LibGio.file_info_get_attribute_status(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      __return_value
    end

    def attribute_string(attribute)
      __return_value = LibGio.file_info_get_attribute_string(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def attribute_stringv(attribute)
      __return_value = LibGio.file_info_get_attribute_stringv(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def attribute_type(attribute)
      __return_value = LibGio.file_info_get_attribute_type(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      __return_value
    end

    def attribute_uint32(attribute)
      __return_value = LibGio.file_info_get_attribute_uint32(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      __return_value
    end

    def attribute_uint64(attribute)
      __return_value = LibGio.file_info_get_attribute_uint64(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      __return_value
    end

    def content_type
      __return_value = LibGio.file_info_get_content_type(to_unsafe.as(LibGio::FileInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def deletion_date
      __return_value = LibGio.file_info_get_deletion_date(to_unsafe.as(LibGio::FileInfo*))
      GLib::DateTime.new(__return_value)
    end

    def display_name
      __return_value = LibGio.file_info_get_display_name(to_unsafe.as(LibGio::FileInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def edit_name
      __return_value = LibGio.file_info_get_edit_name(to_unsafe.as(LibGio::FileInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def etag
      __return_value = LibGio.file_info_get_etag(to_unsafe.as(LibGio::FileInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def file_type
      __return_value = LibGio.file_info_get_file_type(to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def icon
      __return_value = LibGio.file_info_get_icon(to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def is_backup
      __return_value = LibGio.file_info_get_is_backup(to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def is_hidden
      __return_value = LibGio.file_info_get_is_hidden(to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def is_symlink
      __return_value = LibGio.file_info_get_is_symlink(to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def modification_time(result)
      LibGio.file_info_get_modification_time(to_unsafe.as(LibGio::FileInfo*), result)
      nil
    end

    def name
      __return_value = LibGio.file_info_get_name(to_unsafe.as(LibGio::FileInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def size
      __return_value = LibGio.file_info_get_size(to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def sort_order
      __return_value = LibGio.file_info_get_sort_order(to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def symbolic_icon
      __return_value = LibGio.file_info_get_symbolic_icon(to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def symlink_target
      __return_value = LibGio.file_info_get_symlink_target(to_unsafe.as(LibGio::FileInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def has_attribute(attribute)
      __return_value = LibGio.file_info_has_attribute(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      __return_value
    end

    def has_namespace(name_space)
      __return_value = LibGio.file_info_has_namespace(to_unsafe.as(LibGio::FileInfo*), name_space.to_unsafe)
      __return_value
    end

    def list_attributes(name_space)
      __return_value = LibGio.file_info_list_attributes(to_unsafe.as(LibGio::FileInfo*), name_space ? name_space.to_unsafe : nil)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) } if __return_value
    end

    def remove_attribute(attribute)
      LibGio.file_info_remove_attribute(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe)
      nil
    end

    def set_attribute(attribute, type : Gio::FileAttributeType, value_p)
      LibGio.file_info_set_attribute(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, type, value_p)
      nil
    end

    def set_attribute_boolean(attribute, attr_value)
      LibGio.file_info_set_attribute_boolean(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, attr_value)
      nil
    end

    def set_attribute_byte_string(attribute, attr_value)
      LibGio.file_info_set_attribute_byte_string(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, attr_value.to_unsafe)
      nil
    end

    def set_attribute_int32(attribute, attr_value)
      LibGio.file_info_set_attribute_int32(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, Int32.new(attr_value))
      nil
    end

    def set_attribute_int64(attribute, attr_value)
      LibGio.file_info_set_attribute_int64(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, Int64.new(attr_value))
      nil
    end

    def attribute_mask=(mask)
      LibGio.file_info_set_attribute_mask(to_unsafe.as(LibGio::FileInfo*), mask.to_unsafe.as(LibGio::FileAttributeMatcher*))
      nil
    end

    def set_attribute_object(attribute, attr_value)
      LibGio.file_info_set_attribute_object(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, attr_value.to_unsafe.as(LibGObject::Object*))
      nil
    end

    def set_attribute_status(attribute, status : Gio::FileAttributeStatus)
      __return_value = LibGio.file_info_set_attribute_status(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, status)
      __return_value
    end

    def set_attribute_string(attribute, attr_value)
      LibGio.file_info_set_attribute_string(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, attr_value.to_unsafe)
      nil
    end

    def set_attribute_stringv(attribute, attr_value)
      LibGio.file_info_set_attribute_stringv(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, attr_value)
      nil
    end

    def set_attribute_uint32(attribute, attr_value)
      LibGio.file_info_set_attribute_uint32(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, UInt32.new(attr_value))
      nil
    end

    def set_attribute_uint64(attribute, attr_value)
      LibGio.file_info_set_attribute_uint64(to_unsafe.as(LibGio::FileInfo*), attribute.to_unsafe, UInt64.new(attr_value))
      nil
    end

    def content_type=(content_type)
      LibGio.file_info_set_content_type(to_unsafe.as(LibGio::FileInfo*), content_type.to_unsafe)
      nil
    end

    def display_name=(display_name)
      LibGio.file_info_set_display_name(to_unsafe.as(LibGio::FileInfo*), display_name.to_unsafe)
      nil
    end

    def edit_name=(edit_name)
      LibGio.file_info_set_edit_name(to_unsafe.as(LibGio::FileInfo*), edit_name.to_unsafe)
      nil
    end

    def file_type=(type : Gio::FileType)
      LibGio.file_info_set_file_type(to_unsafe.as(LibGio::FileInfo*), type)
      nil
    end

    def icon=(icon)
      LibGio.file_info_set_icon(to_unsafe.as(LibGio::FileInfo*), icon.to_unsafe.as(LibGio::Icon*))
      nil
    end

    def is_hidden=(is_hidden)
      LibGio.file_info_set_is_hidden(to_unsafe.as(LibGio::FileInfo*), is_hidden)
      nil
    end

    def is_symlink=(is_symlink)
      LibGio.file_info_set_is_symlink(to_unsafe.as(LibGio::FileInfo*), is_symlink)
      nil
    end

    def modification_time=(mtime)
      LibGio.file_info_set_modification_time(to_unsafe.as(LibGio::FileInfo*), mtime.to_unsafe.as(LibGLib::TimeVal*))
      nil
    end

    def name=(name)
      LibGio.file_info_set_name(to_unsafe.as(LibGio::FileInfo*), name.to_unsafe)
      nil
    end

    def size=(size)
      LibGio.file_info_set_size(to_unsafe.as(LibGio::FileInfo*), Int64.new(size))
      nil
    end

    def sort_order=(sort_order)
      LibGio.file_info_set_sort_order(to_unsafe.as(LibGio::FileInfo*), Int32.new(sort_order))
      nil
    end

    def symbolic_icon=(icon)
      LibGio.file_info_set_symbolic_icon(to_unsafe.as(LibGio::FileInfo*), icon.to_unsafe.as(LibGio::Icon*))
      nil
    end

    def symlink_target=(symlink_target)
      LibGio.file_info_set_symlink_target(to_unsafe.as(LibGio::FileInfo*), symlink_target.to_unsafe)
      nil
    end

    def unset_attribute_mask
      LibGio.file_info_unset_attribute_mask(to_unsafe.as(LibGio::FileInfo*))
      nil
    end

  end
end

