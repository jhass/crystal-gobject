module GIRepository
  def self.arg_info_get_closure(info)
    __return_value = LibGIRepository.arg_info_get_closure((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.arg_info_get_destroy(info)
    __return_value = LibGIRepository.arg_info_get_destroy((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.arg_info_get_direction(info)
    __return_value = LibGIRepository.arg_info_get_direction((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.arg_info_get_ownership_transfer(info)
    __return_value = LibGIRepository.arg_info_get_ownership_transfer((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.arg_info_get_scope(info)
    __return_value = LibGIRepository.arg_info_get_scope((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.arg_info_get_type(info)
    __return_value = LibGIRepository.arg_info_get_type((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.arg_info_is_caller_allocates(info)
    __return_value = LibGIRepository.arg_info_is_caller_allocates((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.arg_info_is_optional(info)
    __return_value = LibGIRepository.arg_info_is_optional((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.arg_info_is_return_value(info)
    __return_value = LibGIRepository.arg_info_is_return_value((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.arg_info_is_skip(info)
    __return_value = LibGIRepository.arg_info_is_skip((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.arg_info_load_type(info, type)
    __return_value = LibGIRepository.arg_info_load_type((info.to_unsafe as LibGIRepository::BaseInfo*), type)
    __return_value
  end

  def self.arg_info_may_be_null(info)
    __return_value = LibGIRepository.arg_info_may_be_null((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.callable_info_can_throw_gerror(info)
    __return_value = LibGIRepository.callable_info_can_throw_gerror((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.callable_info_get_arg(info, n)
    __return_value = LibGIRepository.callable_info_get_arg((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.callable_info_get_caller_owns(info)
    __return_value = LibGIRepository.callable_info_get_caller_owns((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.callable_info_get_instance_ownership_transfer(info)
    __return_value = LibGIRepository.callable_info_get_instance_ownership_transfer((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.callable_info_get_n_args(info)
    __return_value = LibGIRepository.callable_info_get_n_args((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.callable_info_get_return_attribute(info, name)
    __return_value = LibGIRepository.callable_info_get_return_attribute((info.to_unsafe as LibGIRepository::BaseInfo*), name)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.callable_info_get_return_type(info)
    __return_value = LibGIRepository.callable_info_get_return_type((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.callable_info_invoke(info, function, in_args, n_in_args, out_args, n_out_args, return_value, is_method, throws)
    __error = Pointer(LibGLib::Error).null
    __return_value = LibGIRepository.callable_info_invoke((info.to_unsafe as LibGIRepository::BaseInfo*), function, (in_args.to_unsafe as LibGIRepository::Argument*), Int32.cast(n_in_args), (out_args.to_unsafe as LibGIRepository::Argument*), Int32.cast(n_out_args), (return_value.to_unsafe as LibGIRepository::Argument*), Bool.cast(is_method), Bool.cast(throws), pointerof(__error))
    GLib::Error.assert __error
    __return_value
  end

  def self.callable_info_is_method(info)
    __return_value = LibGIRepository.callable_info_is_method((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.callable_info_iterate_return_attributes(info, iterator, name, value)
    __return_value = LibGIRepository.callable_info_iterate_return_attributes((info.to_unsafe as LibGIRepository::BaseInfo*), (iterator.to_unsafe as LibGIRepository::AttributeIter*), name, value)
    __return_value
  end

  def self.callable_info_load_arg(info, n, arg)
    __return_value = LibGIRepository.callable_info_load_arg((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n), arg)
    __return_value
  end

  def self.callable_info_load_return_type(info, type)
    __return_value = LibGIRepository.callable_info_load_return_type((info.to_unsafe as LibGIRepository::BaseInfo*), type)
    __return_value
  end

  def self.callable_info_may_return_null(info)
    __return_value = LibGIRepository.callable_info_may_return_null((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.callable_info_skip_return(info)
    __return_value = LibGIRepository.callable_info_skip_return((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.constant_info_get_type(info)
    __return_value = LibGIRepository.constant_info_get_type((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.enum_info_get_error_domain(info)
    __return_value = LibGIRepository.enum_info_get_error_domain((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.enum_info_get_method(info, n)
    __return_value = LibGIRepository.enum_info_get_method((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.enum_info_get_n_methods(info)
    __return_value = LibGIRepository.enum_info_get_n_methods((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.enum_info_get_n_values(info)
    __return_value = LibGIRepository.enum_info_get_n_values((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.enum_info_get_storage_type(info)
    __return_value = LibGIRepository.enum_info_get_storage_type((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.enum_info_get_value(info, n)
    __return_value = LibGIRepository.enum_info_get_value((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.field_info_get_flags(info)
    __return_value = LibGIRepository.field_info_get_flags((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.field_info_get_offset(info)
    __return_value = LibGIRepository.field_info_get_offset((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.field_info_get_size(info)
    __return_value = LibGIRepository.field_info_get_size((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.field_info_get_type(info)
    __return_value = LibGIRepository.field_info_get_type((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.function_info_get_flags(info)
    __return_value = LibGIRepository.function_info_get_flags((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.function_info_get_property(info)
    __return_value = LibGIRepository.function_info_get_property((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.function_info_get_symbol(info)
    __return_value = LibGIRepository.function_info_get_symbol((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.function_info_get_vfunc(info)
    __return_value = LibGIRepository.function_info_get_vfunc((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.info_new(type, container, typelib, offset)
    __return_value = LibGIRepository.info_new(type, (container.to_unsafe as LibGIRepository::BaseInfo*), (typelib.to_unsafe as LibGIRepository::Typelib*), UInt32.cast(offset))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.info_type_to_string(type)
    __return_value = LibGIRepository.info_type_to_string(type)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.interface_info_find_method(info, name)
    __return_value = LibGIRepository.interface_info_find_method((info.to_unsafe as LibGIRepository::BaseInfo*), name)
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.interface_info_find_signal(info, name)
    __return_value = LibGIRepository.interface_info_find_signal((info.to_unsafe as LibGIRepository::BaseInfo*), name)
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.interface_info_find_vfunc(info, name)
    __return_value = LibGIRepository.interface_info_find_vfunc((info.to_unsafe as LibGIRepository::BaseInfo*), name)
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.interface_info_get_constant(info, n)
    __return_value = LibGIRepository.interface_info_get_constant((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.interface_info_get_iface_struct(info)
    __return_value = LibGIRepository.interface_info_get_iface_struct((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.interface_info_get_method(info, n)
    __return_value = LibGIRepository.interface_info_get_method((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.interface_info_get_n_constants(info)
    __return_value = LibGIRepository.interface_info_get_n_constants((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.interface_info_get_n_methods(info)
    __return_value = LibGIRepository.interface_info_get_n_methods((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.interface_info_get_n_prerequisites(info)
    __return_value = LibGIRepository.interface_info_get_n_prerequisites((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.interface_info_get_n_properties(info)
    __return_value = LibGIRepository.interface_info_get_n_properties((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.interface_info_get_n_signals(info)
    __return_value = LibGIRepository.interface_info_get_n_signals((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.interface_info_get_n_vfuncs(info)
    __return_value = LibGIRepository.interface_info_get_n_vfuncs((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.interface_info_get_prerequisite(info, n)
    __return_value = LibGIRepository.interface_info_get_prerequisite((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.interface_info_get_property(info, n)
    __return_value = LibGIRepository.interface_info_get_property((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.interface_info_get_signal(info, n)
    __return_value = LibGIRepository.interface_info_get_signal((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.interface_info_get_vfunc(info, n)
    __return_value = LibGIRepository.interface_info_get_vfunc((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.invoke_error_quark
    __return_value = LibGIRepository.invoke_error_quark
    __return_value
  end

  def self.object_info_find_method(info, name)
    __return_value = LibGIRepository.object_info_find_method((info.to_unsafe as LibGIRepository::BaseInfo*), name)
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_find_method_using_interfaces(info, name, implementor)
    __return_value = LibGIRepository.object_info_find_method_using_interfaces((info.to_unsafe as LibGIRepository::BaseInfo*), name, (implementor.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_find_signal(info, name)
    __return_value = LibGIRepository.object_info_find_signal((info.to_unsafe as LibGIRepository::BaseInfo*), name)
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_find_vfunc(info, name)
    __return_value = LibGIRepository.object_info_find_vfunc((info.to_unsafe as LibGIRepository::BaseInfo*), name)
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_find_vfunc_using_interfaces(info, name, implementor)
    __return_value = LibGIRepository.object_info_find_vfunc_using_interfaces((info.to_unsafe as LibGIRepository::BaseInfo*), name, (implementor.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_get_abstract(info)
    __return_value = LibGIRepository.object_info_get_abstract((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.object_info_get_class_struct(info)
    __return_value = LibGIRepository.object_info_get_class_struct((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_get_constant(info, n)
    __return_value = LibGIRepository.object_info_get_constant((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_get_field(info, n)
    __return_value = LibGIRepository.object_info_get_field((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_get_fundamental(info)
    __return_value = LibGIRepository.object_info_get_fundamental((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.object_info_get_get_value_function(info)
    __return_value = LibGIRepository.object_info_get_get_value_function((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.object_info_get_interface(info, n)
    __return_value = LibGIRepository.object_info_get_interface((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_get_method(info, n)
    __return_value = LibGIRepository.object_info_get_method((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_get_n_constants(info)
    __return_value = LibGIRepository.object_info_get_n_constants((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.object_info_get_n_fields(info)
    __return_value = LibGIRepository.object_info_get_n_fields((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.object_info_get_n_interfaces(info)
    __return_value = LibGIRepository.object_info_get_n_interfaces((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.object_info_get_n_methods(info)
    __return_value = LibGIRepository.object_info_get_n_methods((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.object_info_get_n_properties(info)
    __return_value = LibGIRepository.object_info_get_n_properties((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.object_info_get_n_signals(info)
    __return_value = LibGIRepository.object_info_get_n_signals((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.object_info_get_n_vfuncs(info)
    __return_value = LibGIRepository.object_info_get_n_vfuncs((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.object_info_get_parent(info)
    __return_value = LibGIRepository.object_info_get_parent((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_get_property(info, n)
    __return_value = LibGIRepository.object_info_get_property((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_get_ref_function(info)
    __return_value = LibGIRepository.object_info_get_ref_function((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.object_info_get_set_value_function(info)
    __return_value = LibGIRepository.object_info_get_set_value_function((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.object_info_get_signal(info, n)
    __return_value = LibGIRepository.object_info_get_signal((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.object_info_get_type_init(info)
    __return_value = LibGIRepository.object_info_get_type_init((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.object_info_get_type_name(info)
    __return_value = LibGIRepository.object_info_get_type_name((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.object_info_get_unref_function(info)
    __return_value = LibGIRepository.object_info_get_unref_function((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.object_info_get_vfunc(info, n)
    __return_value = LibGIRepository.object_info_get_vfunc((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.property_info_get_flags(info)
    __return_value = LibGIRepository.property_info_get_flags((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.property_info_get_ownership_transfer(info)
    __return_value = LibGIRepository.property_info_get_ownership_transfer((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.property_info_get_type(info)
    __return_value = LibGIRepository.property_info_get_type((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.registered_type_info_get_g_type(info)
    __return_value = LibGIRepository.registered_type_info_get_g_type((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.registered_type_info_get_type_init(info)
    __return_value = LibGIRepository.registered_type_info_get_type_init((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.registered_type_info_get_type_name(info)
    __return_value = LibGIRepository.registered_type_info_get_type_name((info.to_unsafe as LibGIRepository::BaseInfo*))
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.signal_info_get_class_closure(info)
    __return_value = LibGIRepository.signal_info_get_class_closure((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.signal_info_get_flags(info)
    __return_value = LibGIRepository.signal_info_get_flags((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.signal_info_true_stops_emit(info)
    __return_value = LibGIRepository.signal_info_true_stops_emit((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.struct_info_find_method(info, name)
    __return_value = LibGIRepository.struct_info_find_method((info.to_unsafe as LibGIRepository::BaseInfo*), name)
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.struct_info_get_alignment(info)
    __return_value = LibGIRepository.struct_info_get_alignment((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.struct_info_get_field(info, n)
    __return_value = LibGIRepository.struct_info_get_field((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.struct_info_get_method(info, n)
    __return_value = LibGIRepository.struct_info_get_method((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.struct_info_get_n_fields(info)
    __return_value = LibGIRepository.struct_info_get_n_fields((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.struct_info_get_n_methods(info)
    __return_value = LibGIRepository.struct_info_get_n_methods((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.struct_info_get_size(info)
    __return_value = LibGIRepository.struct_info_get_size((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.struct_info_is_foreign(info)
    __return_value = LibGIRepository.struct_info_is_foreign((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.struct_info_is_gtype_struct(info)
    __return_value = LibGIRepository.struct_info_is_gtype_struct((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.type_info_get_array_fixed_size(info)
    __return_value = LibGIRepository.type_info_get_array_fixed_size((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.type_info_get_array_length(info)
    __return_value = LibGIRepository.type_info_get_array_length((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.type_info_get_array_type(info)
    __return_value = LibGIRepository.type_info_get_array_type((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.type_info_get_interface(info)
    __return_value = LibGIRepository.type_info_get_interface((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.type_info_get_param_type(info, n)
    __return_value = LibGIRepository.type_info_get_param_type((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.type_info_get_tag(info)
    __return_value = LibGIRepository.type_info_get_tag((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.type_info_is_pointer(info)
    __return_value = LibGIRepository.type_info_is_pointer((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.type_info_is_zero_terminated(info)
    __return_value = LibGIRepository.type_info_is_zero_terminated((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.type_tag_to_string(type)
    __return_value = LibGIRepository.type_tag_to_string(type)
    raise "Expected string but got null" unless __return_value; String.new(__return_value)
  end

  def self.union_info_find_method(info, name)
    __return_value = LibGIRepository.union_info_find_method((info.to_unsafe as LibGIRepository::BaseInfo*), name)
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.union_info_get_alignment(info)
    __return_value = LibGIRepository.union_info_get_alignment((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.union_info_get_discriminator(info, n)
    __return_value = LibGIRepository.union_info_get_discriminator((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.union_info_get_discriminator_offset(info)
    __return_value = LibGIRepository.union_info_get_discriminator_offset((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.union_info_get_discriminator_type(info)
    __return_value = LibGIRepository.union_info_get_discriminator_type((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.union_info_get_field(info, n)
    __return_value = LibGIRepository.union_info_get_field((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.union_info_get_method(info, n)
    __return_value = LibGIRepository.union_info_get_method((info.to_unsafe as LibGIRepository::BaseInfo*), Int32.cast(n))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.union_info_get_n_fields(info)
    __return_value = LibGIRepository.union_info_get_n_fields((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.union_info_get_n_methods(info)
    __return_value = LibGIRepository.union_info_get_n_methods((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.union_info_get_size(info)
    __return_value = LibGIRepository.union_info_get_size((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.union_info_is_discriminated(info)
    __return_value = LibGIRepository.union_info_is_discriminated((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.value_info_get_value(info)
    __return_value = LibGIRepository.value_info_get_value((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.vfunc_info_get_flags(info)
    __return_value = LibGIRepository.vfunc_info_get_flags((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.vfunc_info_get_invoker(info)
    __return_value = LibGIRepository.vfunc_info_get_invoker((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end

  def self.vfunc_info_get_offset(info)
    __return_value = LibGIRepository.vfunc_info_get_offset((info.to_unsafe as LibGIRepository::BaseInfo*))
    __return_value
  end

  def self.vfunc_info_get_signal(info)
    __return_value = LibGIRepository.vfunc_info_get_signal((info.to_unsafe as LibGIRepository::BaseInfo*))
    GIRepository::BaseInfo.new(__return_value)
  end
end

