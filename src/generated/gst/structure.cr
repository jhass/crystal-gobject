module Gst
  class Structure
    include GObject::WrappedType

    def self.new(type : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGst::Structure*)).tap do |object|
        object.type = type unless type.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGst::Structure*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Structure*)
    end

    def self.new_empty(name) : self
      __return_value = LibGst.structure_new_empty(name.to_unsafe)
      cast Gst::Structure.new(__return_value)
    end

    def self.new_from_string(string) : self
      __return_value = LibGst.structure_new_from_string(string.to_unsafe)
      cast Gst::Structure.new(__return_value) if __return_value
    end

    def self.new_id_empty(quark) : self
      __return_value = LibGst.structure_new_id_empty(UInt32.new(quark))
      cast Gst::Structure.new(__return_value)
    end

    def can_intersect(struct2)
      __return_value = LibGst.structure_can_intersect(@pointer.as(LibGst::Structure*), struct2.to_unsafe.as(LibGst::Structure*))
      __return_value
    end

    def copy
      __return_value = LibGst.structure_copy(@pointer.as(LibGst::Structure*))
      Gst::Structure.new(__return_value)
    end

    def filter_and_map_in_place(func, user_data)
      LibGst.structure_filter_and_map_in_place(@pointer.as(LibGst::Structure*), func, user_data ? user_data : nil)
      nil
    end

    def fixate
      LibGst.structure_fixate(@pointer.as(LibGst::Structure*))
      nil
    end

    def fixate_field(field_name)
      __return_value = LibGst.structure_fixate_field(@pointer.as(LibGst::Structure*), field_name.to_unsafe)
      __return_value
    end

    def fixate_field_boolean(field_name, target)
      __return_value = LibGst.structure_fixate_field_boolean(@pointer.as(LibGst::Structure*), field_name.to_unsafe, target)
      __return_value
    end

    def fixate_field_nearest_double(field_name, target)
      __return_value = LibGst.structure_fixate_field_nearest_double(@pointer.as(LibGst::Structure*), field_name.to_unsafe, Float64.new(target))
      __return_value
    end

    def fixate_field_nearest_fraction(field_name, target_numerator, target_denominator)
      __return_value = LibGst.structure_fixate_field_nearest_fraction(@pointer.as(LibGst::Structure*), field_name.to_unsafe, Int32.new(target_numerator), Int32.new(target_denominator))
      __return_value
    end

    def fixate_field_nearest_int(field_name, target)
      __return_value = LibGst.structure_fixate_field_nearest_int(@pointer.as(LibGst::Structure*), field_name.to_unsafe, Int32.new(target))
      __return_value
    end

    def fixate_field_string(field_name, target)
      __return_value = LibGst.structure_fixate_field_string(@pointer.as(LibGst::Structure*), field_name.to_unsafe, target.to_unsafe)
      __return_value
    end

    def foreach(func, user_data)
      __return_value = LibGst.structure_foreach(@pointer.as(LibGst::Structure*), func, user_data ? user_data : nil)
      __return_value
    end

    def free
      LibGst.structure_free(@pointer.as(LibGst::Structure*))
      nil
    end

    def array(fieldname, array)
      __return_value = LibGst.structure_get_array(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, array)
      __return_value
    end

    def boolean(fieldname, value)
      __return_value = LibGst.structure_get_boolean(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value)
      __return_value
    end

    def clock_time(fieldname, value)
      __return_value = LibGst.structure_get_clock_time(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value)
      __return_value
    end

    def date(fieldname, value)
      __return_value = LibGst.structure_get_date(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value)
      __return_value
    end

    def date_time(fieldname, value)
      __return_value = LibGst.structure_get_date_time(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value)
      __return_value
    end

    def double(fieldname, value)
      __return_value = LibGst.structure_get_double(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value)
      __return_value
    end

    def enum(fieldname, enumtype, value)
      __return_value = LibGst.structure_get_enum(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, UInt64.new(enumtype), value)
      __return_value
    end

    def field_type(fieldname)
      __return_value = LibGst.structure_get_field_type(@pointer.as(LibGst::Structure*), fieldname.to_unsafe)
      __return_value
    end

    def flagset(fieldname, value_flags, value_mask)
      __return_value = LibGst.structure_get_flagset(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value_flags, value_mask)
      __return_value
    end

    def fraction(fieldname, value_numerator, value_denominator)
      __return_value = LibGst.structure_get_fraction(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value_numerator, value_denominator)
      __return_value
    end

    def int(fieldname, value)
      __return_value = LibGst.structure_get_int(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value)
      __return_value
    end

    def int64(fieldname, value)
      __return_value = LibGst.structure_get_int64(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value)
      __return_value
    end

    def list(fieldname, array)
      __return_value = LibGst.structure_get_list(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, array)
      __return_value
    end

    def name
      __return_value = LibGst.structure_get_name(@pointer.as(LibGst::Structure*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name_id
      __return_value = LibGst.structure_get_name_id(@pointer.as(LibGst::Structure*))
      __return_value
    end

    def string(fieldname)
      __return_value = LibGst.structure_get_string(@pointer.as(LibGst::Structure*), fieldname.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def uint(fieldname, value)
      __return_value = LibGst.structure_get_uint(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value)
      __return_value
    end

    def uint64(fieldname, value)
      __return_value = LibGst.structure_get_uint64(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value)
      __return_value
    end

    def value(fieldname)
      __return_value = LibGst.structure_get_value(@pointer.as(LibGst::Structure*), fieldname.to_unsafe)
      GObject::Value.new(__return_value) if __return_value
    end

    def has_field(fieldname)
      __return_value = LibGst.structure_has_field(@pointer.as(LibGst::Structure*), fieldname.to_unsafe)
      __return_value
    end

    def has_field_typed(fieldname, type)
      __return_value = LibGst.structure_has_field_typed(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, UInt64.new(type))
      __return_value
    end

    def has_name(name)
      __return_value = LibGst.structure_has_name(@pointer.as(LibGst::Structure*), name.to_unsafe)
      __return_value
    end

    def id_get_value(field)
      __return_value = LibGst.structure_id_get_value(@pointer.as(LibGst::Structure*), UInt32.new(field))
      GObject::Value.new(__return_value) if __return_value
    end

    def id_has_field(field)
      __return_value = LibGst.structure_id_has_field(@pointer.as(LibGst::Structure*), UInt32.new(field))
      __return_value
    end

    def id_has_field_typed(field, type)
      __return_value = LibGst.structure_id_has_field_typed(@pointer.as(LibGst::Structure*), UInt32.new(field), UInt64.new(type))
      __return_value
    end

    def id_set_value(field, value)
      LibGst.structure_id_set_value(@pointer.as(LibGst::Structure*), UInt32.new(field), value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def id_take_value(field, value)
      LibGst.structure_id_take_value(@pointer.as(LibGst::Structure*), UInt32.new(field), value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def intersect(struct2)
      __return_value = LibGst.structure_intersect(@pointer.as(LibGst::Structure*), struct2.to_unsafe.as(LibGst::Structure*))
      Gst::Structure.new(__return_value) if __return_value
    end

    def equal?(structure2)
      __return_value = LibGst.structure_is_equal(@pointer.as(LibGst::Structure*), structure2.to_unsafe.as(LibGst::Structure*))
      __return_value
    end

    def subset?(superset)
      __return_value = LibGst.structure_is_subset(@pointer.as(LibGst::Structure*), superset.to_unsafe.as(LibGst::Structure*))
      __return_value
    end

    def map_in_place(func, user_data)
      __return_value = LibGst.structure_map_in_place(@pointer.as(LibGst::Structure*), func, user_data ? user_data : nil)
      __return_value
    end

    def n_fields
      __return_value = LibGst.structure_n_fields(@pointer.as(LibGst::Structure*))
      __return_value
    end

    def nth_field_name(index)
      __return_value = LibGst.structure_nth_field_name(@pointer.as(LibGst::Structure*), UInt32.new(index))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def remove_all_fields
      LibGst.structure_remove_all_fields(@pointer.as(LibGst::Structure*))
      nil
    end

    def remove_field(fieldname)
      LibGst.structure_remove_field(@pointer.as(LibGst::Structure*), fieldname.to_unsafe)
      nil
    end

    def set_array(fieldname, array)
      LibGst.structure_set_array(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, array.to_unsafe.as(LibGObject::ValueArray*))
      nil
    end

    def set_list(fieldname, array)
      LibGst.structure_set_list(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, array.to_unsafe.as(LibGObject::ValueArray*))
      nil
    end

    def name=(name)
      LibGst.structure_set_name(@pointer.as(LibGst::Structure*), name.to_unsafe)
      nil
    end

    def parent_refcount=(refcount)
      __return_value = LibGst.structure_set_parent_refcount(@pointer.as(LibGst::Structure*), refcount)
      __return_value
    end

    def set_value(fieldname, value)
      LibGst.structure_set_value(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def take_value(fieldname, value)
      LibGst.structure_take_value(@pointer.as(LibGst::Structure*), fieldname.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def to_string
      __return_value = LibGst.structure_to_string(@pointer.as(LibGst::Structure*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.from_string(string, _end)
      __return_value = LibGst.structure_from_string(string.to_unsafe, _end)
      Gst::Structure.new(__return_value) if __return_value
    end

    def type
      (to_unsafe.as(LibGst::Structure*).value.type)
    end

    def type=(value : UInt64)
      to_unsafe.as(LibGst::Structure*).value.type = UInt64.new(value)
    end

    def name
      (to_unsafe.as(LibGst::Structure*).value.name)
    end

  end
end

