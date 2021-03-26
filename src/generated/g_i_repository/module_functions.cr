module GIRepository
  MAJOR_VERSION = LibGIRepository::MAJOR_VERSION
  MICRO_VERSION = LibGIRepository::MICRO_VERSION
  MINOR_VERSION = LibGIRepository::MINOR_VERSION
  TYPE_TAG_N_TYPES = LibGIRepository::TYPE_TAG_N_TYPES

  def self.arg_info_get_closure(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_get_closure(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.arg_info_get_destroy(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_get_destroy(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.arg_info_get_direction(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_get_direction(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::Direction.new(__var0)
  end

  def self.arg_info_get_ownership_transfer(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_get_ownership_transfer(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::Transfer.new(__var0)
  end

  def self.arg_info_get_scope(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_get_scope(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::ScopeType.new(__var0)
  end

  def self.arg_info_get_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_get_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_arg_info_get_type") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.arg_info_is_caller_allocates(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_is_caller_allocates(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.arg_info_is_optional(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_is_optional(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.arg_info_is_return_value(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_is_return_value(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.arg_info_is_skip(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_is_skip(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.arg_info_load_type(info : GIRepository::BaseInfo, type : GIRepository::BaseInfo)
    LibGIRepository.arg_info_load_type(info.to_unsafe.as(LibGIRepository::BaseInfo*), type)
    nil
  end

  def self.arg_info_may_be_null(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.arg_info_may_be_null(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.callable_info_can_throw_gerror(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.callable_info_can_throw_gerror(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.callable_info_get_arg(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.callable_info_get_arg(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_callable_info_get_arg") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.callable_info_get_caller_owns(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.callable_info_get_caller_owns(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::Transfer.new(__var0)
  end

  def self.callable_info_get_instance_ownership_transfer(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.callable_info_get_instance_ownership_transfer(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::Transfer.new(__var0)
  end

  def self.callable_info_get_n_args(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.callable_info_get_n_args(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.callable_info_get_return_attribute(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.callable_info_get_return_attribute(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    GObject.raise_unexpected_null("g_callable_info_get_return_attribute") if __var0.null?
    ::String.new(__var0)
  end

  def self.callable_info_get_return_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.callable_info_get_return_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_callable_info_get_return_type") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.callable_info_invoke(info : GIRepository::BaseInfo, function : Void*?, in_args : ::Enumerable, out_args : ::Enumerable, return_value : GIRepository::Argument::Union, is_method : ::Bool, throws : ::Bool)
    n_in_args = in_args.size
    n_out_args = out_args.size
    __in_args = (__in_args_ary = in_args.map { |__item| __item }.to_a).to_unsafe
    n_in_args = __in_args_ary.size
    __out_args = (__out_args_ary = out_args.map { |__item| __item }.to_a).to_unsafe
    n_out_args = __out_args_ary.size
    __var0 = Pointer(LibGLib::Error).null
    __var1 = LibGIRepository.callable_info_invoke(info.to_unsafe.as(LibGIRepository::BaseInfo*), function ? function : Pointer(Void).null, __in_args, Int32.new(n_in_args), __out_args, Int32.new(n_out_args), return_value.to_unsafe.as(LibGIRepository::Argument*), LibC::Int.new(is_method ? 1 : 0), LibC::Int.new(throws ? 1 : 0), pointerof(__var0))
    GLib::Error.assert(__var0)
    (__var1 == 1)
  end

  def self.callable_info_is_method(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.callable_info_is_method(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.callable_info_iterate_return_attributes(info : GIRepository::BaseInfo, iterator : GIRepository::AttributeIter)
    __var0 = LibGIRepository.callable_info_iterate_return_attributes(info.to_unsafe.as(LibGIRepository::BaseInfo*), iterator, out name, out value)
    {(__var0 == 1), ::String.new(name), ::String.new(value)}
  end

  def self.callable_info_load_arg(info : GIRepository::BaseInfo, n : ::Int, arg : GIRepository::BaseInfo)
    LibGIRepository.callable_info_load_arg(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n), arg)
    nil
  end

  def self.callable_info_load_return_type(info : GIRepository::BaseInfo, type : GIRepository::BaseInfo)
    LibGIRepository.callable_info_load_return_type(info.to_unsafe.as(LibGIRepository::BaseInfo*), type)
    nil
  end

  def self.callable_info_may_return_null(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.callable_info_may_return_null(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.callable_info_skip_return(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.callable_info_skip_return(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.cclosure_marshal_generic(closure : GObject::Closure, return_gvalue, param_values, invocation_hint : Void*?, marshal_data : Void*?)
    __param_values = param_values.to_gvalue.to_unsafe
    n_param_values = __param_values_ary.size
    LibGIRepository.cclosure_marshal_generic(closure.to_unsafe.as(LibGObject::Closure*), return_gvalue.to_gvalue.to_unsafe, UInt32.new(n_param_values), __param_values, invocation_hint ? invocation_hint : Pointer(Void).null, marshal_data ? marshal_data : Pointer(Void).null)
    nil
  end

  def self.cclosure_marshal_generic(return_gvalue, param_values, invocation_hint : Void*?, marshal_data : Void*?, &closure)
    closure = GObject::Closure.new(closure)
    cclosure_marshal_generic(closure, return_gvalue, param_values, invocation_hint, marshal_data)
  end

  def self.constant_info_get_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.constant_info_get_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_constant_info_get_type") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.enum_info_get_error_domain(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.enum_info_get_error_domain(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_enum_info_get_error_domain") if __var0.null?
    ::String.new(__var0)
  end

  def self.enum_info_get_method(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.enum_info_get_method(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_enum_info_get_method") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.enum_info_get_n_methods(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.enum_info_get_n_methods(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.enum_info_get_n_values(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.enum_info_get_n_values(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.enum_info_get_storage_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.enum_info_get_storage_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::TypeTag.new(__var0)
  end

  def self.enum_info_get_value(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.enum_info_get_value(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_enum_info_get_value") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.field_info_get_flags(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.field_info_get_flags(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::FieldInfoFlags.new(__var0)
  end

  def self.field_info_get_offset(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.field_info_get_offset(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.field_info_get_size(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.field_info_get_size(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.field_info_get_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.field_info_get_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_field_info_get_type") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.function_info_get_flags(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.function_info_get_flags(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::FunctionInfoFlags.new(__var0)
  end

  def self.function_info_get_property(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.function_info_get_property(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_function_info_get_property") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.function_info_get_symbol(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.function_info_get_symbol(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_function_info_get_symbol") if __var0.null?
    ::String.new(__var0)
  end

  def self.function_info_get_vfunc(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.function_info_get_vfunc(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_function_info_get_vfunc") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.major_version
    __var0 = LibGIRepository.get_major_version()
    __var0
  end

  def self.micro_version
    __var0 = LibGIRepository.get_micro_version()
    __var0
  end

  def self.minor_version
    __var0 = LibGIRepository.get_minor_version()
    __var0
  end

  def self.info_new(type : GIRepository::InfoType, container : GIRepository::BaseInfo, typelib : GIRepository::Typelib, offset : ::Int)
    __var0 = LibGIRepository.info_new(type, container.to_unsafe.as(LibGIRepository::BaseInfo*), typelib.to_unsafe.as(LibGIRepository::Typelib*), UInt32.new(offset))
    GObject.raise_unexpected_null("g_info_new") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.info_type_to_string(type : GIRepository::InfoType)
    __var0 = LibGIRepository.info_type_to_string(type)
    GObject.raise_unexpected_null("g_info_type_to_string") if __var0.null?
    ::String.new(__var0)
  end

  def self.interface_info_find_method(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.interface_info_find_method(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    GObject.raise_unexpected_null("g_interface_info_find_method") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.interface_info_find_signal(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.interface_info_find_signal(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    GObject.raise_unexpected_null("g_interface_info_find_signal") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.interface_info_find_vfunc(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.interface_info_find_vfunc(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    GObject.raise_unexpected_null("g_interface_info_find_vfunc") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.interface_info_get_constant(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.interface_info_get_constant(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_interface_info_get_constant") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.interface_info_get_iface_struct(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.interface_info_get_iface_struct(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_interface_info_get_iface_struct") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.interface_info_get_method(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.interface_info_get_method(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_interface_info_get_method") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.interface_info_get_n_constants(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.interface_info_get_n_constants(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.interface_info_get_n_methods(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.interface_info_get_n_methods(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.interface_info_get_n_prerequisites(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.interface_info_get_n_prerequisites(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.interface_info_get_n_properties(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.interface_info_get_n_properties(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.interface_info_get_n_signals(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.interface_info_get_n_signals(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.interface_info_get_n_vfuncs(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.interface_info_get_n_vfuncs(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.interface_info_get_prerequisite(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.interface_info_get_prerequisite(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_interface_info_get_prerequisite") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.interface_info_get_property(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.interface_info_get_property(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_interface_info_get_property") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.interface_info_get_signal(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.interface_info_get_signal(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_interface_info_get_signal") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.interface_info_get_vfunc(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.interface_info_get_vfunc(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_interface_info_get_vfunc") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.invoke_error_quark
    __var0 = LibGIRepository.invoke_error_quark()
    __var0
  end

  def self.object_info_find_method(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.object_info_find_method(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    __var1 = GIRepository::BaseInfo.new(__var0) if __var0
    __var1
  end

  def self.object_info_find_method_using_interfaces(info : GIRepository::BaseInfo, name : ::String, implementor : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_find_method_using_interfaces(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe, implementor)
    __var1 = GIRepository::BaseInfo.new(__var0) if __var0
    __var1
  end

  def self.object_info_find_signal(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.object_info_find_signal(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    __var1 = GIRepository::BaseInfo.new(__var0) if __var0
    __var1
  end

  def self.object_info_find_vfunc(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.object_info_find_vfunc(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    __var1 = GIRepository::BaseInfo.new(__var0) if __var0
    __var1
  end

  def self.object_info_find_vfunc_using_interfaces(info : GIRepository::BaseInfo, name : ::String, implementor : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_find_vfunc_using_interfaces(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe, implementor)
    __var1 = GIRepository::BaseInfo.new(__var0) if __var0
    __var1
  end

  def self.object_info_get_abstract(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_abstract(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.object_info_get_class_struct(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_class_struct(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var1 = GIRepository::BaseInfo.new(__var0) if __var0
    __var1
  end

  def self.object_info_get_constant(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.object_info_get_constant(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_object_info_get_constant") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.object_info_get_field(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.object_info_get_field(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_object_info_get_field") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.object_info_get_fundamental(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_fundamental(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.object_info_get_get_value_function(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_get_value_function(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var1 = ::String.new(__var0) if __var0
    __var1
  end

  def self.object_info_get_interface(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.object_info_get_interface(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_object_info_get_interface") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.object_info_get_method(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.object_info_get_method(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_object_info_get_method") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.object_info_get_n_constants(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_n_constants(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.object_info_get_n_fields(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_n_fields(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.object_info_get_n_interfaces(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_n_interfaces(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.object_info_get_n_methods(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_n_methods(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.object_info_get_n_properties(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_n_properties(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.object_info_get_n_signals(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_n_signals(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.object_info_get_n_vfuncs(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_n_vfuncs(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.object_info_get_parent(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_parent(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var1 = GIRepository::BaseInfo.new(__var0) if __var0
    __var1
  end

  def self.object_info_get_property(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.object_info_get_property(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_object_info_get_property") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.object_info_get_ref_function(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_ref_function(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var1 = ::String.new(__var0) if __var0
    __var1
  end

  def self.object_info_get_set_value_function(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_set_value_function(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var1 = ::String.new(__var0) if __var0
    __var1
  end

  def self.object_info_get_signal(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.object_info_get_signal(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_object_info_get_signal") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.object_info_get_type_init(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_type_init(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_object_info_get_type_init") if __var0.null?
    ::String.new(__var0)
  end

  def self.object_info_get_type_name(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_type_name(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_object_info_get_type_name") if __var0.null?
    ::String.new(__var0)
  end

  def self.object_info_get_unref_function(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.object_info_get_unref_function(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var1 = ::String.new(__var0) if __var0
    __var1
  end

  def self.object_info_get_vfunc(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.object_info_get_vfunc(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_object_info_get_vfunc") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.property_info_get_flags(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.property_info_get_flags(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject::ParamFlags.new(__var0)
  end

  def self.property_info_get_ownership_transfer(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.property_info_get_ownership_transfer(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::Transfer.new(__var0)
  end

  def self.property_info_get_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.property_info_get_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_property_info_get_type") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.registered_type_info_get_g_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.registered_type_info_get_g_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.registered_type_info_get_type_init(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.registered_type_info_get_type_init(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_registered_type_info_get_type_init") if __var0.null?
    ::String.new(__var0)
  end

  def self.registered_type_info_get_type_name(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.registered_type_info_get_type_name(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_registered_type_info_get_type_name") if __var0.null?
    ::String.new(__var0)
  end

  def self.signal_info_get_class_closure(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.signal_info_get_class_closure(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_signal_info_get_class_closure") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.signal_info_get_flags(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.signal_info_get_flags(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject::SignalFlags.new(__var0)
  end

  def self.signal_info_true_stops_emit(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.signal_info_true_stops_emit(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.struct_info_find_field(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.struct_info_find_field(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    GObject.raise_unexpected_null("g_struct_info_find_field") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.struct_info_find_method(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.struct_info_find_method(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    GObject.raise_unexpected_null("g_struct_info_find_method") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.struct_info_get_alignment(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.struct_info_get_alignment(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.struct_info_get_field(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.struct_info_get_field(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_struct_info_get_field") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.struct_info_get_method(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.struct_info_get_method(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_struct_info_get_method") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.struct_info_get_n_fields(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.struct_info_get_n_fields(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.struct_info_get_n_methods(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.struct_info_get_n_methods(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.struct_info_get_size(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.struct_info_get_size(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.struct_info_is_foreign(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.struct_info_is_foreign(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.struct_info_is_gtype_struct(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.struct_info_is_gtype_struct(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.type_info_argument_from_hash_pointer(info : GIRepository::BaseInfo, hash_pointer : Void*?, arg : GIRepository::Argument::Union)
    LibGIRepository.type_info_argument_from_hash_pointer(info.to_unsafe.as(LibGIRepository::BaseInfo*), hash_pointer ? hash_pointer : Pointer(Void).null, arg.to_unsafe.as(LibGIRepository::Argument*))
    nil
  end

  def self.type_info_get_array_fixed_size(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.type_info_get_array_fixed_size(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.type_info_get_array_length(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.type_info_get_array_length(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.type_info_get_array_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.type_info_get_array_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::ArrayType.new(__var0)
  end

  def self.type_info_get_interface(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.type_info_get_interface(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_type_info_get_interface") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.type_info_get_param_type(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.type_info_get_param_type(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_type_info_get_param_type") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.type_info_get_storage_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.type_info_get_storage_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::TypeTag.new(__var0)
  end

  def self.type_info_get_tag(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.type_info_get_tag(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::TypeTag.new(__var0)
  end

  def self.type_info_hash_pointer_from_argument(info : GIRepository::BaseInfo, arg : GIRepository::Argument::Union)
    LibGIRepository.type_info_hash_pointer_from_argument(info.to_unsafe.as(LibGIRepository::BaseInfo*), arg.to_unsafe.as(LibGIRepository::Argument*))
    nil
  end

  def self.type_info_is_pointer(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.type_info_is_pointer(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.type_info_is_zero_terminated(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.type_info_is_zero_terminated(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.type_tag_to_string(type : GIRepository::TypeTag)
    __var0 = LibGIRepository.type_tag_to_string(type)
    GObject.raise_unexpected_null("g_type_tag_to_string") if __var0.null?
    ::String.new(__var0)
  end

  def self.union_info_find_method(info : GIRepository::BaseInfo, name : ::String)
    __var0 = LibGIRepository.union_info_find_method(info.to_unsafe.as(LibGIRepository::BaseInfo*), name.to_unsafe)
    GObject.raise_unexpected_null("g_union_info_find_method") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.union_info_get_alignment(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.union_info_get_alignment(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.union_info_get_discriminator(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.union_info_get_discriminator(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_union_info_get_discriminator") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.union_info_get_discriminator_offset(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.union_info_get_discriminator_offset(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.union_info_get_discriminator_type(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.union_info_get_discriminator_type(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_union_info_get_discriminator_type") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.union_info_get_field(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.union_info_get_field(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_union_info_get_field") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.union_info_get_method(info : GIRepository::BaseInfo, n : ::Int)
    __var0 = LibGIRepository.union_info_get_method(info.to_unsafe.as(LibGIRepository::BaseInfo*), Int32.new(n))
    GObject.raise_unexpected_null("g_union_info_get_method") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.union_info_get_n_fields(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.union_info_get_n_fields(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.union_info_get_n_methods(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.union_info_get_n_methods(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.union_info_get_size(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.union_info_get_size(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.union_info_is_discriminated(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.union_info_is_discriminated(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    (__var0 == 1)
  end

  def self.value_info_get_value(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.value_info_get_value(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.vfunc_info_get_address(info : GIRepository::BaseInfo, implementor_gtype : UInt64)
    __var0 = Pointer(LibGLib::Error).null
    LibGIRepository.vfunc_info_get_address(info.to_unsafe.as(LibGIRepository::BaseInfo*), UInt64.new(implementor_gtype), pointerof(__var0))
    GLib::Error.assert(__var0)
    nil
  end

  def self.vfunc_info_get_flags(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.vfunc_info_get_flags(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GIRepository::VFuncInfoFlags.new(__var0)
  end

  def self.vfunc_info_get_invoker(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.vfunc_info_get_invoker(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_vfunc_info_get_invoker") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end

  def self.vfunc_info_get_offset(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.vfunc_info_get_offset(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    __var0
  end

  def self.vfunc_info_get_signal(info : GIRepository::BaseInfo)
    __var0 = LibGIRepository.vfunc_info_get_signal(info.to_unsafe.as(LibGIRepository::BaseInfo*))
    GObject.raise_unexpected_null("g_vfunc_info_get_signal") if __var0.null?
    GIRepository::BaseInfo.new(__var0)
  end
end
