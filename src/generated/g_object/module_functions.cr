module GObject
  def self.boxed_copy(boxed_type, src_boxed)
    __return_value = LibGObject.boxed_copy(UInt64.cast(boxed_type), src_boxed)
    __return_value
  end

  def self.boxed_free(boxed_type, boxed)
    __return_value = LibGObject.boxed_free(UInt64.cast(boxed_type), boxed)
    __return_value
  end

  def self.cclosure_marshal_BOOLEAN__BOXED_BOXED(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_BOOLEAN__BOXED_BOXED((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_BOOLEAN__FLAGS(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_BOOLEAN__FLAGS((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_STRING__OBJECT_POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_STRING__OBJECT_POINTER((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__BOOLEAN(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__BOOLEAN((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__BOXED(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__BOXED((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__CHAR(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__CHAR((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__DOUBLE(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__DOUBLE((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__ENUM(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__ENUM((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__FLAGS(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__FLAGS((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__FLOAT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__FLOAT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__INT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__INT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__LONG(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__LONG((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__OBJECT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__OBJECT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__PARAM(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__PARAM((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__POINTER((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__STRING(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__STRING((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__UCHAR(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__UCHAR((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__UINT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__UINT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__UINT_POINTER(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__UINT_POINTER((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__ULONG(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__ULONG((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__VARIANT(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__VARIANT((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_VOID__VOID(closure, return_value, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_VOID__VOID((closure.to_unsafe as LibGObject::Closure*), (return_value.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.cclosure_marshal_generic(closure, return_gvalue, n_param_values, param_values, invocation_hint, marshal_data)
    __return_value = LibGObject.cclosure_marshal_generic((closure.to_unsafe as LibGObject::Closure*), (return_gvalue.to_unsafe as LibGObject::Value*), UInt32.cast(n_param_values), (param_values.to_unsafe as LibGObject::Value*), invocation_hint, marshal_data)
    __return_value
  end

  def self.enum_complete_type_info(g_enum_type, info, const_values)
    __return_value = LibGObject.enum_complete_type_info(UInt64.cast(g_enum_type), info, (const_values.to_unsafe as LibGObject::EnumValue*))
    __return_value
  end

  def self.enum_get_value(enum_class, value)
    __return_value = LibGObject.enum_get_value((enum_class.to_unsafe as LibGObject::EnumClass*), Int32.cast(value))
    GObject::EnumValue.new(__return_value)
  end

  def self.enum_get_value_by_name(enum_class, name)
    __return_value = LibGObject.enum_get_value_by_name((enum_class.to_unsafe as LibGObject::EnumClass*), name)
    GObject::EnumValue.new(__return_value)
  end

  def self.enum_get_value_by_nick(enum_class, nick)
    __return_value = LibGObject.enum_get_value_by_nick((enum_class.to_unsafe as LibGObject::EnumClass*), nick)
    GObject::EnumValue.new(__return_value)
  end

  def self.enum_register_static(name, const_static_values)
    __return_value = LibGObject.enum_register_static(name, (const_static_values.to_unsafe as LibGObject::EnumValue*))
    __return_value
  end

  def self.flags_complete_type_info(g_flags_type, info, const_values)
    __return_value = LibGObject.flags_complete_type_info(UInt64.cast(g_flags_type), info, (const_values.to_unsafe as LibGObject::FlagsValue*))
    __return_value
  end

  def self.flags_get_first_value(flags_class, value)
    __return_value = LibGObject.flags_get_first_value((flags_class.to_unsafe as LibGObject::FlagsClass*), UInt32.cast(value))
    GObject::FlagsValue.new(__return_value)
  end

  def self.flags_get_value_by_name(flags_class, name)
    __return_value = LibGObject.flags_get_value_by_name((flags_class.to_unsafe as LibGObject::FlagsClass*), name)
    GObject::FlagsValue.new(__return_value)
  end

  def self.flags_get_value_by_nick(flags_class, nick)
    __return_value = LibGObject.flags_get_value_by_nick((flags_class.to_unsafe as LibGObject::FlagsClass*), nick)
    GObject::FlagsValue.new(__return_value)
  end

  def self.flags_register_static(name, const_static_values)
    __return_value = LibGObject.flags_register_static(name, (const_static_values.to_unsafe as LibGObject::FlagsValue*))
    __return_value
  end

  def self.gtype_get_type
    __return_value = LibGObject.gtype_get_type
    __return_value
  end

  def self.param_spec_boolean(name, nick, blurb, default_value, flags)
    __return_value = LibGObject.param_spec_boolean(name, nick, blurb, Bool.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_boxed(name, nick, blurb, boxed_type, flags)
    __return_value = LibGObject.param_spec_boxed(name, nick, blurb, UInt64.cast(boxed_type), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_char(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_char(name, nick, blurb, Int8.cast(minimum), Int8.cast(maximum), Int8.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_double(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_double(name, nick, blurb, Float64.cast(minimum), Float64.cast(maximum), Float64.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_enum(name, nick, blurb, enum_type, default_value, flags)
    __return_value = LibGObject.param_spec_enum(name, nick, blurb, UInt64.cast(enum_type), Int32.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_flags(name, nick, blurb, flags_type, default_value, flags)
    __return_value = LibGObject.param_spec_flags(name, nick, blurb, UInt64.cast(flags_type), UInt32.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_float(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_float(name, nick, blurb, Float32.cast(minimum), Float32.cast(maximum), Float32.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_gtype(name, nick, blurb, is_a_type, flags)
    __return_value = LibGObject.param_spec_gtype(name, nick, blurb, UInt64.cast(is_a_type), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_int(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_int(name, nick, blurb, Int32.cast(minimum), Int32.cast(maximum), Int32.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_int64(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_int64(name, nick, blurb, Int64.cast(minimum), Int64.cast(maximum), Int64.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_long(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_long(name, nick, blurb, Int64.cast(minimum), Int64.cast(maximum), Int64.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_object(name, nick, blurb, object_type, flags)
    __return_value = LibGObject.param_spec_object(name, nick, blurb, UInt64.cast(object_type), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_param(name, nick, blurb, param_type, flags)
    __return_value = LibGObject.param_spec_param(name, nick, blurb, UInt64.cast(param_type), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_pointer(name, nick, blurb, flags)
    __return_value = LibGObject.param_spec_pointer(name, nick, blurb, flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_pool_new(type_prefixing)
    __return_value = LibGObject.param_spec_pool_new(Bool.cast(type_prefixing))
    GObject::ParamSpecPool.new(__return_value)
  end

  def self.param_spec_string(name, nick, blurb, default_value, flags)
    __return_value = LibGObject.param_spec_string(name, nick, blurb, default_value, flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_uchar(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_uchar(name, nick, blurb, UInt8.cast(minimum), UInt8.cast(maximum), UInt8.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_uint(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_uint(name, nick, blurb, UInt32.cast(minimum), UInt32.cast(maximum), UInt32.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_uint64(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_uint64(name, nick, blurb, UInt64.cast(minimum), UInt64.cast(maximum), UInt64.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_ulong(name, nick, blurb, minimum, maximum, default_value, flags)
    __return_value = LibGObject.param_spec_ulong(name, nick, blurb, UInt64.cast(minimum), UInt64.cast(maximum), UInt64.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_unichar(name, nick, blurb, default_value, flags)
    __return_value = LibGObject.param_spec_unichar(name, nick, blurb, UInt8.cast(default_value), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_spec_variant(name, nick, blurb, type, default_value, flags)
    __return_value = LibGObject.param_spec_variant(name, nick, blurb, (type.to_unsafe as LibGLib::VariantType*), (default_value.to_unsafe as LibGLib::Variant*), flags)
    GObject::ParamSpec.new(__return_value)
  end

  def self.param_type_register_static(name, pspec_info)
    __return_value = LibGObject.param_type_register_static(name, (pspec_info.to_unsafe as LibGObject::ParamSpecTypeInfo*))
    __return_value
  end

  def self.param_value_convert(pspec, src_value, dest_value, strict_validation)
    __return_value = LibGObject.param_value_convert((pspec.to_unsafe as LibGObject::ParamSpec*), (src_value.to_unsafe as LibGObject::Value*), (dest_value.to_unsafe as LibGObject::Value*), Bool.cast(strict_validation))
    __return_value
  end

  def self.param_value_defaults(pspec, value)
    __return_value = LibGObject.param_value_defaults((pspec.to_unsafe as LibGObject::ParamSpec*), (value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.param_value_set_default(pspec, value)
    __return_value = LibGObject.param_value_set_default((pspec.to_unsafe as LibGObject::ParamSpec*), (value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.param_value_validate(pspec, value)
    __return_value = LibGObject.param_value_validate((pspec.to_unsafe as LibGObject::ParamSpec*), (value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.param_values_cmp(pspec, value1, value2)
    __return_value = LibGObject.param_values_cmp((pspec.to_unsafe as LibGObject::ParamSpec*), (value1.to_unsafe as LibGObject::Value*), (value2.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.pointer_type_register_static(name)
    __return_value = LibGObject.pointer_type_register_static(name)
    __return_value
  end

  def self.signal_accumulator_first_wins(ihint, return_accu, handler_return, dummy)
    __return_value = LibGObject.signal_accumulator_first_wins((ihint.to_unsafe as LibGObject::SignalInvocationHint*), (return_accu.to_unsafe as LibGObject::Value*), (handler_return.to_unsafe as LibGObject::Value*), dummy)
    __return_value
  end

  def self.signal_accumulator_true_handled(ihint, return_accu, handler_return, dummy)
    __return_value = LibGObject.signal_accumulator_true_handled((ihint.to_unsafe as LibGObject::SignalInvocationHint*), (return_accu.to_unsafe as LibGObject::Value*), (handler_return.to_unsafe as LibGObject::Value*), dummy)
    __return_value
  end

  def self.signal_add_emission_hook(signal_id, detail, hook_func, hook_data, data_destroy)
    __return_value = LibGObject.signal_add_emission_hook(UInt32.cast(signal_id), UInt32.cast(detail), hook_func, hook_data, data_destroy)
    __return_value
  end

  def self.signal_chain_from_overridden(instance_and_params, return_value)
    __return_value = LibGObject.signal_chain_from_overridden(instance_and_params, (return_value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.signal_connect_closure(instance, detailed_signal, closure, after)
    __return_value = LibGObject.signal_connect_closure((instance.to_unsafe as LibGObject::Object*), detailed_signal, (closure.to_unsafe as LibGObject::Closure*), Bool.cast(after))
    __return_value
  end

  def self.signal_connect_closure_by_id(instance, signal_id, detail, closure, after)
    __return_value = LibGObject.signal_connect_closure_by_id((instance.to_unsafe as LibGObject::Object*), UInt32.cast(signal_id), UInt32.cast(detail), (closure.to_unsafe as LibGObject::Closure*), Bool.cast(after))
    __return_value
  end

  def self.signal_emitv(instance_and_params, signal_id, detail, return_value)
    __return_value = LibGObject.signal_emitv(instance_and_params, UInt32.cast(signal_id), UInt32.cast(detail), (return_value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.signal_get_invocation_hint(instance)
    __return_value = LibGObject.signal_get_invocation_hint((instance.to_unsafe as LibGObject::Object*))
    GObject::SignalInvocationHint.new(__return_value)
  end

  def self.signal_handler_block(instance, handler_id)
    __return_value = LibGObject.signal_handler_block((instance.to_unsafe as LibGObject::Object*), UInt64.cast(handler_id))
    __return_value
  end

  def self.signal_handler_disconnect(instance, handler_id)
    __return_value = LibGObject.signal_handler_disconnect((instance.to_unsafe as LibGObject::Object*), UInt64.cast(handler_id))
    __return_value
  end

  def self.signal_handler_find(instance, mask, signal_id, detail, closure, func, data)
    __return_value = LibGObject.signal_handler_find((instance.to_unsafe as LibGObject::Object*), mask, UInt32.cast(signal_id), UInt32.cast(detail), (closure.to_unsafe as LibGObject::Closure*), func, data)
    __return_value
  end

  def self.signal_handler_is_connected(instance, handler_id)
    __return_value = LibGObject.signal_handler_is_connected((instance.to_unsafe as LibGObject::Object*), UInt64.cast(handler_id))
    __return_value
  end

  def self.signal_handler_unblock(instance, handler_id)
    __return_value = LibGObject.signal_handler_unblock((instance.to_unsafe as LibGObject::Object*), UInt64.cast(handler_id))
    __return_value
  end

  def self.signal_handlers_block_matched(instance, mask, signal_id, detail, closure, func, data)
    __return_value = LibGObject.signal_handlers_block_matched((instance.to_unsafe as LibGObject::Object*), mask, UInt32.cast(signal_id), UInt32.cast(detail), (closure.to_unsafe as LibGObject::Closure*), func, data)
    __return_value
  end

  def self.signal_handlers_destroy(instance)
    __return_value = LibGObject.signal_handlers_destroy((instance.to_unsafe as LibGObject::Object*))
    __return_value
  end

  def self.signal_handlers_disconnect_matched(instance, mask, signal_id, detail, closure, func, data)
    __return_value = LibGObject.signal_handlers_disconnect_matched((instance.to_unsafe as LibGObject::Object*), mask, UInt32.cast(signal_id), UInt32.cast(detail), (closure.to_unsafe as LibGObject::Closure*), func, data)
    __return_value
  end

  def self.signal_handlers_unblock_matched(instance, mask, signal_id, detail, closure, func, data)
    __return_value = LibGObject.signal_handlers_unblock_matched((instance.to_unsafe as LibGObject::Object*), mask, UInt32.cast(signal_id), UInt32.cast(detail), (closure.to_unsafe as LibGObject::Closure*), func, data)
    __return_value
  end

  def self.signal_has_handler_pending(instance, signal_id, detail, may_be_blocked)
    __return_value = LibGObject.signal_has_handler_pending((instance.to_unsafe as LibGObject::Object*), UInt32.cast(signal_id), UInt32.cast(detail), Bool.cast(may_be_blocked))
    __return_value
  end

  def self.signal_list_ids(itype, n_ids)
    __return_value = LibGObject.signal_list_ids(UInt64.cast(itype), UInt32.cast(n_ids))
    PointerIterator.new(__return_value) {|__item_50| __item_50 }
  end

  def self.signal_lookup(name, itype)
    __return_value = LibGObject.signal_lookup(name, UInt64.cast(itype))
    __return_value
  end

  def self.signal_name(signal_id)
    __return_value = LibGObject.signal_name(UInt32.cast(signal_id))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.signal_override_class_closure(signal_id, instance_type, class_closure)
    __return_value = LibGObject.signal_override_class_closure(UInt32.cast(signal_id), UInt64.cast(instance_type), (class_closure.to_unsafe as LibGObject::Closure*))
    __return_value
  end

  def self.signal_parse_name(detailed_signal, itype, signal_id_p, detail_p, force_detail_quark)
    __return_value = LibGObject.signal_parse_name(detailed_signal, UInt64.cast(itype), UInt32.cast(signal_id_p), UInt32.cast(detail_p), Bool.cast(force_detail_quark))
    __return_value
  end

  def self.signal_query(signal_id, query)
    __return_value = LibGObject.signal_query(UInt32.cast(signal_id), query)
    __return_value
  end

  def self.signal_remove_emission_hook(signal_id, hook_id)
    __return_value = LibGObject.signal_remove_emission_hook(UInt32.cast(signal_id), UInt64.cast(hook_id))
    __return_value
  end

  def self.signal_set_va_marshaller(signal_id, instance_type, va_marshaller)
    __return_value = LibGObject.signal_set_va_marshaller(UInt32.cast(signal_id), UInt64.cast(instance_type), va_marshaller)
    __return_value
  end

  def self.signal_stop_emission(instance, signal_id, detail)
    __return_value = LibGObject.signal_stop_emission((instance.to_unsafe as LibGObject::Object*), UInt32.cast(signal_id), UInt32.cast(detail))
    __return_value
  end

  def self.signal_stop_emission_by_name(instance, detailed_signal)
    __return_value = LibGObject.signal_stop_emission_by_name((instance.to_unsafe as LibGObject::Object*), detailed_signal)
    __return_value
  end

  def self.signal_type_cclosure_new(itype, struct_offset)
    __return_value = LibGObject.signal_type_cclosure_new(UInt64.cast(itype), UInt32.cast(struct_offset))
    GObject::Closure.new(__return_value)
  end

  def self.source_set_closure(source, closure)
    __return_value = LibGObject.source_set_closure((source.to_unsafe as LibGLib::Source*), (closure.to_unsafe as LibGObject::Closure*))
    __return_value
  end

  def self.source_set_dummy_callback(source)
    __return_value = LibGObject.source_set_dummy_callback((source.to_unsafe as LibGLib::Source*))
    __return_value
  end

  def self.strdup_value_contents(value)
    __return_value = LibGObject.strdup_value_contents((value.to_unsafe as LibGObject::Value*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.type_add_class_private(class_type, private_size)
    __return_value = LibGObject.type_add_class_private(UInt64.cast(class_type), UInt64.cast(private_size))
    __return_value
  end

  def self.type_add_instance_private(class_type, private_size)
    __return_value = LibGObject.type_add_instance_private(UInt64.cast(class_type), UInt64.cast(private_size))
    __return_value
  end

  def self.type_add_interface_dynamic(instance_type, interface_type, plugin)
    __return_value = LibGObject.type_add_interface_dynamic(UInt64.cast(instance_type), UInt64.cast(interface_type), (plugin.to_unsafe as LibGObject::TypePlugin*))
    __return_value
  end

  def self.type_add_interface_static(instance_type, interface_type, info)
    __return_value = LibGObject.type_add_interface_static(UInt64.cast(instance_type), UInt64.cast(interface_type), (info.to_unsafe as LibGObject::InterfaceInfo*))
    __return_value
  end

  def self.type_check_class_is_a(g_class, is_a_type)
    __return_value = LibGObject.type_check_class_is_a((g_class.to_unsafe as LibGObject::TypeClass*), UInt64.cast(is_a_type))
    __return_value
  end

  def self.type_check_instance(instance)
    __return_value = LibGObject.type_check_instance((instance.to_unsafe as LibGObject::TypeInstance*))
    __return_value
  end

  def self.type_check_instance_is_a(instance, iface_type)
    __return_value = LibGObject.type_check_instance_is_a((instance.to_unsafe as LibGObject::TypeInstance*), UInt64.cast(iface_type))
    __return_value
  end

  def self.type_check_instance_is_fundamentally_a(instance, fundamental_type)
    __return_value = LibGObject.type_check_instance_is_fundamentally_a((instance.to_unsafe as LibGObject::TypeInstance*), UInt64.cast(fundamental_type))
    __return_value
  end

  def self.type_check_is_value_type(type)
    __return_value = LibGObject.type_check_is_value_type(UInt64.cast(type))
    __return_value
  end

  def self.type_check_value(value)
    __return_value = LibGObject.type_check_value((value.to_unsafe as LibGObject::Value*))
    __return_value
  end

  def self.type_check_value_holds(value, type)
    __return_value = LibGObject.type_check_value_holds((value.to_unsafe as LibGObject::Value*), UInt64.cast(type))
    __return_value
  end

  def self.type_children(type, n_children)
    __return_value = LibGObject.type_children(UInt64.cast(type), UInt32.cast(n_children))
    PointerIterator.new(__return_value) {|__item_50| __item_50 }
  end

  def self.type_class_add_private(g_class, private_size)
    __return_value = LibGObject.type_class_add_private(g_class, UInt64.cast(private_size))
    __return_value
  end

  def self.type_class_adjust_private_offset(g_class, private_size_or_offset)
    __return_value = LibGObject.type_class_adjust_private_offset(g_class, private_size_or_offset)
    __return_value
  end

  def self.type_class_peek(type)
    __return_value = LibGObject.type_class_peek(UInt64.cast(type))
    GObject::TypeClass.new(__return_value)
  end

  def self.type_class_peek_static(type)
    __return_value = LibGObject.type_class_peek_static(UInt64.cast(type))
    GObject::TypeClass.new(__return_value)
  end

  def self.type_class_ref(type)
    __return_value = LibGObject.type_class_ref(UInt64.cast(type))
    GObject::TypeClass.new(__return_value)
  end

  def self.type_default_interface_peek(g_type)
    __return_value = LibGObject.type_default_interface_peek(UInt64.cast(g_type))
    GObject::TypeInterface.new(__return_value)
  end

  def self.type_default_interface_ref(g_type)
    __return_value = LibGObject.type_default_interface_ref(UInt64.cast(g_type))
    GObject::TypeInterface.new(__return_value)
  end

  def self.type_default_interface_unref(g_iface)
    __return_value = LibGObject.type_default_interface_unref((g_iface.to_unsafe as LibGObject::TypeInterface*))
    __return_value
  end

  def self.type_depth(type)
    __return_value = LibGObject.type_depth(UInt64.cast(type))
    __return_value
  end

  def self.type_ensure(type)
    __return_value = LibGObject.type_ensure(UInt64.cast(type))
    __return_value
  end

  def self.type_free_instance(instance)
    __return_value = LibGObject.type_free_instance((instance.to_unsafe as LibGObject::TypeInstance*))
    __return_value
  end

  def self.type_from_name(name)
    __return_value = LibGObject.type_from_name(name)
    __return_value
  end

  def self.type_fundamental(type_id)
    __return_value = LibGObject.type_fundamental(UInt64.cast(type_id))
    __return_value
  end

  def self.type_fundamental_next
    __return_value = LibGObject.type_fundamental_next
    __return_value
  end

  def self.type_get_plugin(type)
    __return_value = LibGObject.type_get_plugin(UInt64.cast(type))
    __return_value
  end

  def self.type_get_qdata(type, quark)
    __return_value = LibGObject.type_get_qdata(UInt64.cast(type), UInt32.cast(quark))
    __return_value
  end

  def self.type_get_type_registration_serial
    __return_value = LibGObject.type_get_type_registration_serial
    __return_value
  end

  def self.type_init
    __return_value = LibGObject.type_init
    __return_value
  end

  def self.type_init_with_debug_flags(debug_flags)
    __return_value = LibGObject.type_init_with_debug_flags(debug_flags)
    __return_value
  end

  def self.type_interface_add_prerequisite(interface_type, prerequisite_type)
    __return_value = LibGObject.type_interface_add_prerequisite(UInt64.cast(interface_type), UInt64.cast(prerequisite_type))
    __return_value
  end

  def self.type_interface_get_plugin(instance_type, interface_type)
    __return_value = LibGObject.type_interface_get_plugin(UInt64.cast(instance_type), UInt64.cast(interface_type))
    __return_value
  end

  def self.type_interface_peek(instance_class, iface_type)
    __return_value = LibGObject.type_interface_peek((instance_class.to_unsafe as LibGObject::TypeClass*), UInt64.cast(iface_type))
    GObject::TypeInterface.new(__return_value)
  end

  def self.type_interface_prerequisites(interface_type, n_prerequisites)
    __return_value = LibGObject.type_interface_prerequisites(UInt64.cast(interface_type), UInt32.cast(n_prerequisites))
    PointerIterator.new(__return_value) {|__item_24| __item_24 }
  end

  def self.type_interfaces(type, n_interfaces)
    __return_value = LibGObject.type_interfaces(UInt64.cast(type), UInt32.cast(n_interfaces))
    PointerIterator.new(__return_value) {|__item_27| __item_27 }
  end

  def self.type_is_a(type, is_a_type)
    __return_value = LibGObject.type_is_a(UInt64.cast(type), UInt64.cast(is_a_type))
    __return_value
  end

  def self.type_name(type)
    __return_value = LibGObject.type_name(UInt64.cast(type))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.type_name_from_class(g_class)
    __return_value = LibGObject.type_name_from_class((g_class.to_unsafe as LibGObject::TypeClass*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.type_name_from_instance(instance)
    __return_value = LibGObject.type_name_from_instance((instance.to_unsafe as LibGObject::TypeInstance*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.type_next_base(leaf_type, root_type)
    __return_value = LibGObject.type_next_base(UInt64.cast(leaf_type), UInt64.cast(root_type))
    __return_value
  end

  def self.type_parent(type)
    __return_value = LibGObject.type_parent(UInt64.cast(type))
    __return_value
  end

  def self.type_qname(type)
    __return_value = LibGObject.type_qname(UInt64.cast(type))
    __return_value
  end

  def self.type_query(type, query)
    __return_value = LibGObject.type_query(UInt64.cast(type), query)
    __return_value
  end

  def self.type_register_dynamic(parent_type, type_name, plugin, flags)
    __return_value = LibGObject.type_register_dynamic(UInt64.cast(parent_type), type_name, (plugin.to_unsafe as LibGObject::TypePlugin*), flags)
    __return_value
  end

  def self.type_register_fundamental(type_id, type_name, info, finfo, flags)
    __return_value = LibGObject.type_register_fundamental(UInt64.cast(type_id), type_name, (info.to_unsafe as LibGObject::TypeInfo*), (finfo.to_unsafe as LibGObject::TypeFundamentalInfo*), flags)
    __return_value
  end

  def self.type_register_static(parent_type, type_name, info, flags)
    __return_value = LibGObject.type_register_static(UInt64.cast(parent_type), type_name, (info.to_unsafe as LibGObject::TypeInfo*), flags)
    __return_value
  end

  def self.type_set_qdata(type, quark, data)
    __return_value = LibGObject.type_set_qdata(UInt64.cast(type), UInt32.cast(quark), data)
    __return_value
  end

  def self.type_test_flags(type, flags)
    __return_value = LibGObject.type_test_flags(UInt64.cast(type), UInt32.cast(flags))
    __return_value
  end

  def self.value_type_compatible(src_type, dest_type)
    __return_value = LibGObject.value_type_compatible(UInt64.cast(src_type), UInt64.cast(dest_type))
    __return_value
  end

  def self.value_type_transformable(src_type, dest_type)
    __return_value = LibGObject.value_type_transformable(UInt64.cast(src_type), UInt64.cast(dest_type))
    __return_value
  end
end

