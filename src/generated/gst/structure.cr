module Gst
  class Structure
    include GObject::WrappedType

    def initialize(@gst_structure)
    end

    def to_unsafe
      @gst_structure.not_nil!
    end

    def self.new_empty(name)
      __return_value = LibGst.structure_new_empty(name)
      Gst::Structure.new(__return_value)
    end

    def self.new_from_string(string)
      __return_value = LibGst.structure_new_from_string(string)
      Gst::Structure.new(__return_value) if __return_value
    end

    def self.new_id_empty(quark)
      __return_value = LibGst.structure_new_id_empty(UInt32.new(quark))
      Gst::Structure.new(__return_value)
    end

    def can_intersect(struct2)
      __return_value = LibGst.structure_can_intersect((to_unsafe as LibGst::Structure*), (struct2.to_unsafe as LibGst::Structure*))
      __return_value
    end

    def copy
      __return_value = LibGst.structure_copy((to_unsafe as LibGst::Structure*))
      Gst::Structure.new(__return_value)
    end

    def filter_and_map_in_place(func : LibGst::StructureFilterMapFunc, user_data)
      __return_value = LibGst.structure_filter_and_map_in_place((to_unsafe as LibGst::Structure*), func, user_data)
      __return_value
    end

    def fixate
      __return_value = LibGst.structure_fixate((to_unsafe as LibGst::Structure*))
      __return_value
    end

    def fixate_field(field_name)
      __return_value = LibGst.structure_fixate_field((to_unsafe as LibGst::Structure*), field_name)
      __return_value
    end

    def fixate_field_boolean(field_name, target)
      __return_value = LibGst.structure_fixate_field_boolean((to_unsafe as LibGst::Structure*), field_name, target)
      __return_value
    end

    def fixate_field_nearest_double(field_name, target)
      __return_value = LibGst.structure_fixate_field_nearest_double((to_unsafe as LibGst::Structure*), field_name, Float64.new(target))
      __return_value
    end

    def fixate_field_nearest_fraction(field_name, target_numerator, target_denominator)
      __return_value = LibGst.structure_fixate_field_nearest_fraction((to_unsafe as LibGst::Structure*), field_name, Int32.new(target_numerator), Int32.new(target_denominator))
      __return_value
    end

    def fixate_field_nearest_int(field_name, target)
      __return_value = LibGst.structure_fixate_field_nearest_int((to_unsafe as LibGst::Structure*), field_name, Int32.new(target))
      __return_value
    end

    def fixate_field_string(field_name, target)
      __return_value = LibGst.structure_fixate_field_string((to_unsafe as LibGst::Structure*), field_name, target)
      __return_value
    end

    def foreach(func : LibGst::StructureForeachFunc, user_data)
      __return_value = LibGst.structure_foreach((to_unsafe as LibGst::Structure*), func, user_data)
      __return_value
    end

    def free
      __return_value = LibGst.structure_free((to_unsafe as LibGst::Structure*))
      __return_value
    end

    def boolean(fieldname, value)
      __return_value = LibGst.structure_get_boolean((to_unsafe as LibGst::Structure*), fieldname, value)
      __return_value
    end

    def clock_time(fieldname, value)
      __return_value = LibGst.structure_get_clock_time((to_unsafe as LibGst::Structure*), fieldname, UInt64.new(value))
      __return_value
    end

    def date(fieldname, value)
      __return_value = LibGst.structure_get_date((to_unsafe as LibGst::Structure*), fieldname, (value.to_unsafe as LibGLib::Date*))
      __return_value
    end

    def date_time(fieldname, value)
      __return_value = LibGst.structure_get_date_time((to_unsafe as LibGst::Structure*), fieldname, (value.to_unsafe as LibGst::DateTime*))
      __return_value
    end

    def double(fieldname, value)
      __return_value = LibGst.structure_get_double((to_unsafe as LibGst::Structure*), fieldname, Float64.new(value))
      __return_value
    end

    def enum(fieldname, enumtype, value)
      __return_value = LibGst.structure_get_enum((to_unsafe as LibGst::Structure*), fieldname, UInt64.new(enumtype), Int32.new(value))
      __return_value
    end

    def field_type(fieldname)
      __return_value = LibGst.structure_get_field_type((to_unsafe as LibGst::Structure*), fieldname)
      __return_value
    end

    def flagset(fieldname, value_flags, value_mask)
      __return_value = LibGst.structure_get_flagset((to_unsafe as LibGst::Structure*), fieldname, UInt32.new(value_flags), UInt32.new(value_mask))
      __return_value
    end

    def fraction(fieldname, value_numerator, value_denominator)
      __return_value = LibGst.structure_get_fraction((to_unsafe as LibGst::Structure*), fieldname, Int32.new(value_numerator), Int32.new(value_denominator))
      __return_value
    end

    def int(fieldname, value)
      __return_value = LibGst.structure_get_int((to_unsafe as LibGst::Structure*), fieldname, Int32.new(value))
      __return_value
    end

    def int64(fieldname, value)
      __return_value = LibGst.structure_get_int64((to_unsafe as LibGst::Structure*), fieldname, Int64.new(value))
      __return_value
    end

    def name
      __return_value = LibGst.structure_get_name((to_unsafe as LibGst::Structure*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def name_id
      __return_value = LibGst.structure_get_name_id((to_unsafe as LibGst::Structure*))
      __return_value
    end

    def string(fieldname)
      __return_value = LibGst.structure_get_string((to_unsafe as LibGst::Structure*), fieldname)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def uint(fieldname, value)
      __return_value = LibGst.structure_get_uint((to_unsafe as LibGst::Structure*), fieldname, UInt32.new(value))
      __return_value
    end

    def uint64(fieldname, value)
      __return_value = LibGst.structure_get_uint64((to_unsafe as LibGst::Structure*), fieldname, UInt64.new(value))
      __return_value
    end

    def value(fieldname)
      __return_value = LibGst.structure_get_value((to_unsafe as LibGst::Structure*), fieldname)
      GObject::Value.new(__return_value)
    end

    def has_field(fieldname)
      __return_value = LibGst.structure_has_field((to_unsafe as LibGst::Structure*), fieldname)
      __return_value
    end

    def has_field_typed(fieldname, type)
      __return_value = LibGst.structure_has_field_typed((to_unsafe as LibGst::Structure*), fieldname, UInt64.new(type))
      __return_value
    end

    def has_name(name)
      __return_value = LibGst.structure_has_name((to_unsafe as LibGst::Structure*), name)
      __return_value
    end

    def id_get_value(field)
      __return_value = LibGst.structure_id_get_value((to_unsafe as LibGst::Structure*), UInt32.new(field))
      GObject::Value.new(__return_value)
    end

    def id_has_field(field)
      __return_value = LibGst.structure_id_has_field((to_unsafe as LibGst::Structure*), UInt32.new(field))
      __return_value
    end

    def id_has_field_typed(field, type)
      __return_value = LibGst.structure_id_has_field_typed((to_unsafe as LibGst::Structure*), UInt32.new(field), UInt64.new(type))
      __return_value
    end

    def id_set_value(field, value)
      __return_value = LibGst.structure_id_set_value((to_unsafe as LibGst::Structure*), UInt32.new(field), (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def id_take_value(field, value)
      __return_value = LibGst.structure_id_take_value((to_unsafe as LibGst::Structure*), UInt32.new(field), (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def intersect(struct2)
      __return_value = LibGst.structure_intersect((to_unsafe as LibGst::Structure*), (struct2.to_unsafe as LibGst::Structure*))
      Gst::Structure.new(__return_value)
    end

    def equal?(structure2)
      __return_value = LibGst.structure_is_equal((to_unsafe as LibGst::Structure*), (structure2.to_unsafe as LibGst::Structure*))
      __return_value
    end

    def subset?(superset)
      __return_value = LibGst.structure_is_subset((to_unsafe as LibGst::Structure*), (superset.to_unsafe as LibGst::Structure*))
      __return_value
    end

    def map_in_place(func : LibGst::StructureMapFunc, user_data)
      __return_value = LibGst.structure_map_in_place((to_unsafe as LibGst::Structure*), func, user_data)
      __return_value
    end

    def n_fields
      __return_value = LibGst.structure_n_fields((to_unsafe as LibGst::Structure*))
      __return_value
    end

    def nth_field_name(index)
      __return_value = LibGst.structure_nth_field_name((to_unsafe as LibGst::Structure*), UInt32.new(index))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def remove_all_fields
      __return_value = LibGst.structure_remove_all_fields((to_unsafe as LibGst::Structure*))
      __return_value
    end

    def remove_field(fieldname)
      __return_value = LibGst.structure_remove_field((to_unsafe as LibGst::Structure*), fieldname)
      __return_value
    end

    def name=(name)
      __return_value = LibGst.structure_set_name((to_unsafe as LibGst::Structure*), name)
      __return_value
    end

    def parent_refcount=(refcount)
      __return_value = LibGst.structure_set_parent_refcount((to_unsafe as LibGst::Structure*), refcount)
      __return_value
    end

    def set_value(fieldname, value)
      __return_value = LibGst.structure_set_value((to_unsafe as LibGst::Structure*), fieldname, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def take_value(fieldname, value)
      __return_value = LibGst.structure_take_value((to_unsafe as LibGst::Structure*), fieldname, (value.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def to_string
      __return_value = LibGst.structure_to_string((to_unsafe as LibGst::Structure*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.from_string(string, end)
      __return_value = LibGst.structure_from_string(string, end)
      Gst::Structure.new(__return_value) if __return_value
    end

  end
end

