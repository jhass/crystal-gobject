module GObject
  PARAM_MASK = LibGObject::PARAM_MASK

  PARAM_STATIC_STRINGS = LibGObject::PARAM_STATIC_STRINGS

  PARAM_USER_SHIFT = LibGObject::PARAM_USER_SHIFT

  SIGNAL_FLAGS_MASK = LibGObject::SIGNAL_FLAGS_MASK

  SIGNAL_MATCH_MASK = LibGObject::SIGNAL_MATCH_MASK

  TYPE_FLAG_RESERVED_ID_BIT = LibGObject::TYPE_FLAG_RESERVED_ID_BIT

  TYPE_FUNDAMENTAL_MAX = LibGObject::TYPE_FUNDAMENTAL_MAX

  TYPE_FUNDAMENTAL_SHIFT = LibGObject::TYPE_FUNDAMENTAL_SHIFT

  TYPE_RESERVED_BSE_FIRST = LibGObject::TYPE_RESERVED_BSE_FIRST

  TYPE_RESERVED_BSE_LAST = LibGObject::TYPE_RESERVED_BSE_LAST

  TYPE_RESERVED_GLIB_FIRST = LibGObject::TYPE_RESERVED_GLIB_FIRST

  TYPE_RESERVED_GLIB_LAST = LibGObject::TYPE_RESERVED_GLIB_LAST

  TYPE_RESERVED_USER_FIRST = LibGObject::TYPE_RESERVED_USER_FIRST

  VALUE_COLLECT_FORMAT_MAX_LENGTH = LibGObject::VALUE_COLLECT_FORMAT_MAX_LENGTH

  VALUE_NOCOPY_CONTENTS = LibGObject::VALUE_NOCOPY_CONTENTS

  def self.boxed_copy(boxed_type, src_boxed)
    LibGObject.boxed_copy(UInt64.new(boxed_type), src_boxed)
    nil
  end

  def self.boxed_free(boxed_type, boxed)
    LibGObject.boxed_free(UInt64.new(boxed_type), boxed)
    nil
  end

  def self.cclosure_marshal_BOOLEAN__BOXED_BOXED(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_BOOLEAN__BOXED_BOXED(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_BOOLEAN__FLAGS(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_BOOLEAN__FLAGS(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_STRING__OBJECT_POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_STRING__OBJECT_POINTER(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__BOOLEAN(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__BOOLEAN(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__BOXED(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__BOXED(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__CHAR(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__CHAR(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__DOUBLE(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__DOUBLE(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__ENUM(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__ENUM(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__FLAGS(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__FLAGS(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__FLOAT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__FLOAT(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__INT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__INT(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__LONG(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__LONG(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__OBJECT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__OBJECT(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__PARAM(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__PARAM(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__POINTER(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__STRING(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__STRING(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__UCHAR(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__UCHAR(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__UINT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__UINT(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__UINT_POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__UINT_POINTER(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__ULONG(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__ULONG(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__VARIANT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__VARIANT(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_VOID__VOID(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_VOID__VOID(closure.to_unsafe.as(LibGObject::Closure*), return_value.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.cclosure_marshal_generic(closure, return_gvalue, n_param_values, param_values, invocation_hint, marshal_data)
    LibGObject.cclosure_marshal_generic(closure.to_unsafe.as(LibGObject::Closure*), return_gvalue.to_unsafe.as(LibGObject::Value*), UInt32.new(n_param_values), param_values.to_unsafe.as(LibGObject::Value*), invocation_hint ? invocation_hint : nil, marshal_data ? marshal_data : nil)
    nil
  end

  def self.enum_complete_type_info(g_enum_type, info, const_values)
    LibGObject.enum_complete_type_info(UInt64.new(g_enum_type), info, const_values.to_unsafe.as(LibGObject::EnumValue*))
    nil
  end

  def self.enum_get_value(enum_class, value)
    __return_value = LibGObject.enum_get_value(enum_class.to_unsafe.as(LibGObject::EnumClass*), Int32.new(value))
    GObject::EnumValue.new(__return_value)
  end

  def self.enum_get_value_by_name(enum_class, name)
    __return_value = LibGObject.enum_get_value_by_name(enum_class.to_unsafe.as(LibGObject::EnumClass*), name.to_unsafe)
    GObject::EnumValue.new(__return_value)
  end

  def self.enum_get_value_by_nick(enum_class, nick)
    __return_value = LibGObject.enum_get_value_by_nick(enum_class.to_unsafe.as(LibGObject::EnumClass*), nick.to_unsafe)
    GObject::EnumValue.new(__return_value)
  end

  def self.enum_register_static(name, const_static_values)
    __return_value = LibGObject.enum_register_static(name.to_unsafe, const_static_values.to_unsafe.as(LibGObject::EnumValue*))
    __return_value
  end

  def self.enum_to_string(g_enum_type, value)
    __return_value = LibGObject.enum_to_string(UInt64.new(g_enum_type), Int32.new(value))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.flags_complete_type_info(g_flags_type, info, const_values)
    LibGObject.flags_complete_type_info(UInt64.new(g_flags_type), info, const_values.to_unsafe.as(LibGObject::FlagsValue*))
    nil
  end

  def self.flags_get_first_value(flags_class, value)
    __return_value = LibGObject.flags_get_first_value(flags_class.to_unsafe.as(LibGObject::FlagsClass*), UInt32.new(value))
    GObject::FlagsValue.new(__return_value)
  end

  def self.flags_get_value_by_name(flags_class, name)
    __return_value = LibGObject.flags_get_value_by_name(flags_class.to_unsafe.as(LibGObject::FlagsClass*), name.to_unsafe)
    GObject::FlagsValue.new(__return_value)
  end

  def self.flags_get_value_by_nick(flags_class, nick)
    __return_value = LibGObject.flags_get_value_by_nick(flags_class.to_unsafe.as(LibGObject::FlagsClass*), nick.to_unsafe)
    GObject::FlagsValue.new(__return_value)
  end

  def self.flags_register_static(name, const_static_values)
    __return_value = LibGObject.flags_register_static(name.to_unsafe, const_static_values.to_unsafe.as(LibGObject::FlagsValue*))
    __return_value
  end

  def self.flags_to_string(flags_type, value)
    __return_value = LibGObject.flags_to_string(UInt64.new(flags_type), UInt32.new(value))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.gtype_get_type
    __return_value = LibGObject.gtype_get_type
    __return_value
  end

  def self.param_spec_boolean(name, nick, blurb, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_boolean(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, default_value, flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_boxed(name, nick, blurb, boxed_type, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_boxed(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt64.new(boxed_type), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_char(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_char(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, Int8.new(minimum), Int8.new(maximum), Int8.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_double(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_double(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, Float64.new(minimum), Float64.new(maximum), Float64.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_enum(name, nick, blurb, enum_type, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_enum(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt64.new(enum_type), Int32.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_flags(name, nick, blurb, flags_type, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_flags(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt64.new(flags_type), UInt32.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_float(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_float(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, Float32.new(minimum), Float32.new(maximum), Float32.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_gtype(name, nick, blurb, is_a_type, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_gtype(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt64.new(is_a_type), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_int(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_int(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, Int32.new(minimum), Int32.new(maximum), Int32.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_int64(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_int64(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, Int64.new(minimum), Int64.new(maximum), Int64.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_long(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_long(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, Int64.new(minimum), Int64.new(maximum), Int64.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_object(name, nick, blurb, object_type, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_object(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt64.new(object_type), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_param(name, nick, blurb, param_type, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_param(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt64.new(param_type), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_pointer(name, nick, blurb, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_pointer(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_pool_new(type_prefixing)
    __return_value = LibGObject.param_spec_pool_new(type_prefixing)
    GObject::ParamSpecPool.new(__return_value)
  end

  def self.param_spec_string(name, nick, blurb, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_string(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, default_value ? default_value.to_unsafe : nil, flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_uchar(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_uchar(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt8.new(minimum), UInt8.new(maximum), UInt8.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_uint(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_uint(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt32.new(minimum), UInt32.new(maximum), UInt32.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_uint64(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_uint64(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt64.new(minimum), UInt64.new(maximum), UInt64.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_ulong(name, nick, blurb, minimum, maximum, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_ulong(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt64.new(minimum), UInt64.new(maximum), UInt64.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_unichar(name, nick, blurb, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_unichar(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, UInt8.new(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_variant(name, nick, blurb, type, default_value, flags : GObject::ParamFlags)
    __return_value = LibGObject.param_spec_variant(name.to_unsafe, nick.to_unsafe, blurb.to_unsafe, type.to_unsafe.as(LibGLib::VariantType*), default_value ? default_value.to_unsafe.as(LibGLib::Variant*) : nil, flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_type_register_static(name, pspec_info)
    __return_value = LibGObject.param_type_register_static(name.to_unsafe, pspec_info.to_unsafe.as(LibGObject::ParamSpecTypeInfo*))
    __return_value
  end

  def self.param_value_convert(pspec, src_value, dest_value, strict_validation)
    __return_value = LibGObject.param_value_convert(pspec.to_unsafe.as(LibGObject::ParamSpec*), src_value.to_unsafe.as(LibGObject::Value*), dest_value.to_unsafe.as(LibGObject::Value*), strict_validation)
    __return_value
  end

  def self.param_value_defaults(pspec, value)
    __return_value = LibGObject.param_value_defaults(pspec.to_unsafe.as(LibGObject::ParamSpec*), value.to_unsafe.as(LibGObject::Value*))
    __return_value
  end

  def self.param_value_set_default(pspec, value)
    LibGObject.param_value_set_default(pspec.to_unsafe.as(LibGObject::ParamSpec*), value.to_unsafe.as(LibGObject::Value*))
    nil
  end

  def self.param_value_validate(pspec, value)
    __return_value = LibGObject.param_value_validate(pspec.to_unsafe.as(LibGObject::ParamSpec*), value.to_unsafe.as(LibGObject::Value*))
    __return_value
  end

  def self.param_values_cmp(pspec, value1, value2)
    __return_value = LibGObject.param_values_cmp(pspec.to_unsafe.as(LibGObject::ParamSpec*), value1.to_unsafe.as(LibGObject::Value*), value2.to_unsafe.as(LibGObject::Value*))
    __return_value
  end

  def self.pointer_type_register_static(name)
    __return_value = LibGObject.pointer_type_register_static(name.to_unsafe)
    __return_value
  end

  def self.signal_accumulator_first_wins(ihint, return_accu, handler_return, dummy)
    __return_value = LibGObject.signal_accumulator_first_wins(ihint.to_unsafe.as(LibGObject::SignalInvocationHint*), return_accu.to_unsafe.as(LibGObject::Value*), handler_return.to_unsafe.as(LibGObject::Value*), dummy ? dummy : nil)
    __return_value
  end

  def self.signal_accumulator_true_handled(ihint, return_accu, handler_return, dummy)
    __return_value = LibGObject.signal_accumulator_true_handled(ihint.to_unsafe.as(LibGObject::SignalInvocationHint*), return_accu.to_unsafe.as(LibGObject::Value*), handler_return.to_unsafe.as(LibGObject::Value*), dummy ? dummy : nil)
    __return_value
  end

  def self.signal_add_emission_hook(signal_id, detail, hook_func, hook_data, data_destroy)
    __return_value = LibGObject.signal_add_emission_hook(UInt32.new(signal_id), UInt32.new(detail), hook_func, hook_data ? hook_data : nil, data_destroy)
    __return_value
  end

  def self.signal_chain_from_overridden(instance_and_params, return_value)
    LibGObject.signal_chain_from_overridden(instance_and_params, return_value.to_unsafe.as(LibGObject::Value*))
    nil
  end

  def self.signal_connect_closure(instance, detailed_signal, closure, after)
    __return_value = LibGObject.signal_connect_closure(instance.to_unsafe.as(LibGObject::Object*), detailed_signal.to_unsafe, closure.to_unsafe.as(LibGObject::Closure*), after)
    __return_value
  end

  def self.signal_connect_closure_by_id(instance, signal_id, detail, closure, after)
    __return_value = LibGObject.signal_connect_closure_by_id(instance.to_unsafe.as(LibGObject::Object*), UInt32.new(signal_id), UInt32.new(detail), closure.to_unsafe.as(LibGObject::Closure*), after)
    __return_value
  end

  def self.signal_emitv(instance_and_params, signal_id, detail, return_value)
    LibGObject.signal_emitv(instance_and_params, UInt32.new(signal_id), UInt32.new(detail), return_value)
    nil
  end

  def self.signal_get_invocation_hint(instance)
    __return_value = LibGObject.signal_get_invocation_hint(instance.to_unsafe.as(LibGObject::Object*))
    GObject::SignalInvocationHint.new(__return_value)
  end

  def self.signal_handler_block(instance, handler_id)
    LibGObject.signal_handler_block(instance.to_unsafe.as(LibGObject::Object*), UInt64.new(handler_id))
    nil
  end

  def self.signal_handler_disconnect(instance, handler_id)
    LibGObject.signal_handler_disconnect(instance.to_unsafe.as(LibGObject::Object*), UInt64.new(handler_id))
    nil
  end

  def self.signal_handler_find(instance, mask : GObject::SignalMatchType, signal_id, detail, closure, func, data)
    __return_value = LibGObject.signal_handler_find(instance.to_unsafe.as(LibGObject::Object*), mask, UInt32.new(signal_id), UInt32.new(detail), closure ? closure.to_unsafe.as(LibGObject::Closure*) : nil, func ? func : nil, data ? data : nil)
    __return_value
  end

  def self.signal_handler_is_connected(instance, handler_id)
    __return_value = LibGObject.signal_handler_is_connected(instance.to_unsafe.as(LibGObject::Object*), UInt64.new(handler_id))
    __return_value
  end

  def self.signal_handler_unblock(instance, handler_id)
    LibGObject.signal_handler_unblock(instance.to_unsafe.as(LibGObject::Object*), UInt64.new(handler_id))
    nil
  end

  def self.signal_handlers_block_matched(instance, mask : GObject::SignalMatchType, signal_id, detail, closure, func, data)
    __return_value = LibGObject.signal_handlers_block_matched(instance.to_unsafe.as(LibGObject::Object*), mask, UInt32.new(signal_id), UInt32.new(detail), closure ? closure.to_unsafe.as(LibGObject::Closure*) : nil, func ? func : nil, data ? data : nil)
    __return_value
  end

  def self.signal_handlers_destroy(instance)
    LibGObject.signal_handlers_destroy(instance.to_unsafe.as(LibGObject::Object*))
    nil
  end

  def self.signal_handlers_disconnect_matched(instance, mask : GObject::SignalMatchType, signal_id, detail, closure, func, data)
    __return_value = LibGObject.signal_handlers_disconnect_matched(instance.to_unsafe.as(LibGObject::Object*), mask, UInt32.new(signal_id), UInt32.new(detail), closure ? closure.to_unsafe.as(LibGObject::Closure*) : nil, func ? func : nil, data ? data : nil)
    __return_value
  end

  def self.signal_handlers_unblock_matched(instance, mask : GObject::SignalMatchType, signal_id, detail, closure, func, data)
    __return_value = LibGObject.signal_handlers_unblock_matched(instance.to_unsafe.as(LibGObject::Object*), mask, UInt32.new(signal_id), UInt32.new(detail), closure ? closure.to_unsafe.as(LibGObject::Closure*) : nil, func ? func : nil, data ? data : nil)
    __return_value
  end

  def self.signal_has_handler_pending(instance, signal_id, detail, may_be_blocked)
    __return_value = LibGObject.signal_has_handler_pending(instance.to_unsafe.as(LibGObject::Object*), UInt32.new(signal_id), UInt32.new(detail), may_be_blocked)
    __return_value
  end

  def self.signal_list_ids(itype, n_ids)
    __return_value = LibGObject.signal_list_ids(UInt64.new(itype), n_ids)
    PointerIterator.new(__return_value) {|__item| __item }
  end

  def self.signal_lookup(name, itype)
    __return_value = LibGObject.signal_lookup(name.to_unsafe, UInt64.new(itype))
    __return_value
  end

  def self.signal_name(signal_id)
    __return_value = LibGObject.signal_name(UInt32.new(signal_id))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.signal_override_class_closure(signal_id, instance_type, class_closure)
    LibGObject.signal_override_class_closure(UInt32.new(signal_id), UInt64.new(instance_type), class_closure.to_unsafe.as(LibGObject::Closure*))
    nil
  end

  def self.signal_parse_name(detailed_signal, itype, signal_id_p, detail_p, force_detail_quark)
    __return_value = LibGObject.signal_parse_name(detailed_signal.to_unsafe, UInt64.new(itype), signal_id_p, detail_p, force_detail_quark)
    __return_value
  end

  def self.signal_query(signal_id, query)
    LibGObject.signal_query(UInt32.new(signal_id), query)
    nil
  end

  def self.signal_remove_emission_hook(signal_id, hook_id)
    LibGObject.signal_remove_emission_hook(UInt32.new(signal_id), UInt64.new(hook_id))
    nil
  end

  def self.signal_set_va_marshaller(signal_id, instance_type, va_marshaller)
    LibGObject.signal_set_va_marshaller(UInt32.new(signal_id), UInt64.new(instance_type), va_marshaller)
    nil
  end

  def self.signal_stop_emission(instance, signal_id, detail)
    LibGObject.signal_stop_emission(instance.to_unsafe.as(LibGObject::Object*), UInt32.new(signal_id), UInt32.new(detail))
    nil
  end

  def self.signal_stop_emission_by_name(instance, detailed_signal)
    LibGObject.signal_stop_emission_by_name(instance.to_unsafe.as(LibGObject::Object*), detailed_signal.to_unsafe)
    nil
  end

  def self.signal_type_cclosure_new(itype, struct_offset)
    __return_value = LibGObject.signal_type_cclosure_new(UInt64.new(itype), UInt32.new(struct_offset))
    GObject::Closure.new(__return_value)
  end

  def self.source_set_closure(source, closure)
    LibGObject.source_set_closure(source.to_unsafe.as(LibGLib::Source*), closure.to_unsafe.as(LibGObject::Closure*))
    nil
  end

  def self.source_set_dummy_callback(source)
    LibGObject.source_set_dummy_callback(source.to_unsafe.as(LibGLib::Source*))
    nil
  end

  def self.strdup_value_contents(value)
    __return_value = LibGObject.strdup_value_contents(value.to_unsafe.as(LibGObject::Value*))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.type_add_class_private(class_type, private_size)
    LibGObject.type_add_class_private(UInt64.new(class_type), UInt64.new(private_size))
    nil
  end

  def self.type_add_instance_private(class_type, private_size)
    __return_value = LibGObject.type_add_instance_private(UInt64.new(class_type), UInt64.new(private_size))
    __return_value
  end

  def self.type_add_interface_dynamic(instance_type, interface_type, plugin)
    LibGObject.type_add_interface_dynamic(UInt64.new(instance_type), UInt64.new(interface_type), plugin.to_unsafe.as(LibGObject::TypePlugin*))
    nil
  end

  def self.type_add_interface_static(instance_type, interface_type, info)
    LibGObject.type_add_interface_static(UInt64.new(instance_type), UInt64.new(interface_type), info.to_unsafe.as(LibGObject::InterfaceInfo*))
    nil
  end

  def self.type_check_class_is_a(g_class, is_a_type)
    __return_value = LibGObject.type_check_class_is_a(g_class.to_unsafe.as(LibGObject::TypeClass*), UInt64.new(is_a_type))
    __return_value
  end

  def self.type_check_instance(instance)
    __return_value = LibGObject.type_check_instance(instance.to_unsafe.as(LibGObject::TypeInstance*))
    __return_value
  end

  def self.type_check_instance_is_a(instance, iface_type)
    __return_value = LibGObject.type_check_instance_is_a(instance.to_unsafe.as(LibGObject::TypeInstance*), UInt64.new(iface_type))
    __return_value
  end

  def self.type_check_instance_is_fundamentally_a(instance, fundamental_type)
    __return_value = LibGObject.type_check_instance_is_fundamentally_a(instance.to_unsafe.as(LibGObject::TypeInstance*), UInt64.new(fundamental_type))
    __return_value
  end

  def self.type_check_is_value_type(type)
    __return_value = LibGObject.type_check_is_value_type(UInt64.new(type))
    __return_value
  end

  def self.type_check_value(value)
    __return_value = LibGObject.type_check_value(value.to_unsafe.as(LibGObject::Value*))
    __return_value
  end

  def self.type_check_value_holds(value, type)
    __return_value = LibGObject.type_check_value_holds(value.to_unsafe.as(LibGObject::Value*), UInt64.new(type))
    __return_value
  end

  def self.type_children(type, n_children)
    __return_value = LibGObject.type_children(UInt64.new(type), n_children)
    PointerIterator.new(__return_value) {|__item| __item }
  end

  def self.type_class_adjust_private_offset(g_class, private_size_or_offset)
    LibGObject.type_class_adjust_private_offset(g_class ? g_class : nil, private_size_or_offset)
    nil
  end

  def self.type_class_peek(type)
    __return_value = LibGObject.type_class_peek(UInt64.new(type))
    GObject::TypeClass.new(__return_value)
  end

  def self.type_class_peek_static(type)
    __return_value = LibGObject.type_class_peek_static(UInt64.new(type))
    GObject::TypeClass.new(__return_value)
  end

  def self.type_class_ref(type)
    __return_value = LibGObject.type_class_ref(UInt64.new(type))
    GObject::TypeClass.new(__return_value)
  end

  def self.type_default_interface_peek(g_type)
    __return_value = LibGObject.type_default_interface_peek(UInt64.new(g_type))
    GObject::TypeInterface.new(__return_value)
  end

  def self.type_default_interface_ref(g_type)
    __return_value = LibGObject.type_default_interface_ref(UInt64.new(g_type))
    GObject::TypeInterface.new(__return_value)
  end

  def self.type_default_interface_unref(g_iface)
    LibGObject.type_default_interface_unref(g_iface.to_unsafe.as(LibGObject::TypeInterface*))
    nil
  end

  def self.type_depth(type)
    __return_value = LibGObject.type_depth(UInt64.new(type))
    __return_value
  end

  def self.type_ensure(type)
    LibGObject.type_ensure(UInt64.new(type))
    nil
  end

  def self.type_free_instance(instance)
    LibGObject.type_free_instance(instance.to_unsafe.as(LibGObject::TypeInstance*))
    nil
  end

  def self.type_from_name(name)
    __return_value = LibGObject.type_from_name(name.to_unsafe)
    __return_value
  end

  def self.type_fundamental(type_id)
    __return_value = LibGObject.type_fundamental(UInt64.new(type_id))
    __return_value
  end

  def self.type_fundamental_next
    __return_value = LibGObject.type_fundamental_next
    __return_value
  end

  def self.type_get_instance_count(type)
    __return_value = LibGObject.type_get_instance_count(UInt64.new(type))
    __return_value
  end

  def self.type_get_plugin(type)
    __return_value = LibGObject.type_get_plugin(UInt64.new(type))
    __return_value
  end

  def self.type_get_qdata(type, quark)
    LibGObject.type_get_qdata(UInt64.new(type), UInt32.new(quark))
    nil
  end

  def self.type_get_type_registration_serial
    __return_value = LibGObject.type_get_type_registration_serial
    __return_value
  end

  def self.type_init
    LibGObject.type_init
    nil
  end

  def self.type_init_with_debug_flags(debug_flags : GObject::TypeDebugFlags)
    LibGObject.type_init_with_debug_flags(debug_flags)
    nil
  end

  def self.type_interface_add_prerequisite(interface_type, prerequisite_type)
    LibGObject.type_interface_add_prerequisite(UInt64.new(interface_type), UInt64.new(prerequisite_type))
    nil
  end

  def self.type_interface_get_plugin(instance_type, interface_type)
    __return_value = LibGObject.type_interface_get_plugin(UInt64.new(instance_type), UInt64.new(interface_type))
    __return_value
  end

  def self.type_interface_peek(instance_class, iface_type)
    __return_value = LibGObject.type_interface_peek(instance_class.to_unsafe.as(LibGObject::TypeClass*), UInt64.new(iface_type))
    GObject::TypeInterface.new(__return_value)
  end

  def self.type_interface_prerequisites(interface_type, n_prerequisites)
    __return_value = LibGObject.type_interface_prerequisites(UInt64.new(interface_type), n_prerequisites)
    PointerIterator.new(__return_value) {|__item| __item }
  end

  def self.type_interfaces(type, n_interfaces)
    __return_value = LibGObject.type_interfaces(UInt64.new(type), n_interfaces)
    PointerIterator.new(__return_value) {|__item| __item }
  end

  def self.type_is_a(type, is_a_type)
    __return_value = LibGObject.type_is_a(UInt64.new(type), UInt64.new(is_a_type))
    __return_value
  end

  def self.type_name(type)
    __return_value = LibGObject.type_name(UInt64.new(type))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.type_name_from_class(g_class)
    __return_value = LibGObject.type_name_from_class(g_class.to_unsafe.as(LibGObject::TypeClass*))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.type_name_from_instance(instance)
    __return_value = LibGObject.type_name_from_instance(instance.to_unsafe.as(LibGObject::TypeInstance*))
    (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
  end

  def self.type_next_base(leaf_type, root_type)
    __return_value = LibGObject.type_next_base(UInt64.new(leaf_type), UInt64.new(root_type))
    __return_value
  end

  def self.type_parent(type)
    __return_value = LibGObject.type_parent(UInt64.new(type))
    __return_value
  end

  def self.type_qname(type)
    __return_value = LibGObject.type_qname(UInt64.new(type))
    __return_value
  end

  def self.type_query(type, query)
    LibGObject.type_query(UInt64.new(type), query)
    nil
  end

  def self.type_register_dynamic(parent_type, type_name, plugin, flags : GObject::TypeFlags)
    __return_value = LibGObject.type_register_dynamic(UInt64.new(parent_type), type_name.to_unsafe, plugin.to_unsafe.as(LibGObject::TypePlugin*), flags)
    __return_value
  end

  def self.type_register_fundamental(type_id, type_name, info, finfo, flags : GObject::TypeFlags)
    __return_value = LibGObject.type_register_fundamental(UInt64.new(type_id), type_name.to_unsafe, info.to_unsafe.as(LibGObject::TypeInfo*), finfo.to_unsafe.as(LibGObject::TypeFundamentalInfo*), flags)
    __return_value
  end

  def self.type_register_static(parent_type, type_name, info, flags : GObject::TypeFlags)
    __return_value = LibGObject.type_register_static(UInt64.new(parent_type), type_name.to_unsafe, info.to_unsafe.as(LibGObject::TypeInfo*), flags)
    __return_value
  end

  def self.type_set_qdata(type, quark, data)
    LibGObject.type_set_qdata(UInt64.new(type), UInt32.new(quark), data ? data : nil)
    nil
  end

  def self.type_test_flags(type, flags)
    __return_value = LibGObject.type_test_flags(UInt64.new(type), UInt32.new(flags))
    __return_value
  end

  def self.value_type_compatible(src_type, dest_type)
    __return_value = LibGObject.value_type_compatible(UInt64.new(src_type), UInt64.new(dest_type))
    __return_value
  end

  def self.value_type_transformable(src_type, dest_type)
    __return_value = LibGObject.value_type_transformable(UInt64.new(src_type), UInt64.new(dest_type))
    __return_value
  end
end

