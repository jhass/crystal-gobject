require "./lib_g_object"
require "./lib_g_lib"

@[Link("girepository-1.0", pkg_config: "gobject-introspection-1.0")]
lib LibGIRepository
  ###########################################
  ##    Unions
  ###########################################

  union Argument
    v_boolean : LibC::Int
    v_int8 : Int8
    v_uint8 : UInt8
    v_int16 : Int16
    v_uint16 : UInt16
    v_int32 : Int32
    v_uint32 : UInt32
    v_int64 : Int64
    v_uint64 : UInt64
    v_float : Float32
    v_double : Float64
    v_short : Int16
    v_ushort : UInt16
    v_int : Int32
    v_uint : UInt32
    v_long : Int64
    v_ulong : UInt64
    v_ssize : Int64
    v_size : UInt64
    v_string : UInt8*
    v_pointer : Void*
  end

  ###########################################
  ##    Enums
  ###########################################

  alias ArrayType = UInt32

  alias Direction = UInt32

  alias InfoType = UInt32

  alias RepositoryError = UInt32

  alias ScopeType = UInt32

  alias Transfer = UInt32

  alias TypeTag = UInt32

  ###########################################
  ##    Structs
  ###########################################

  struct AttributeIter # struct
    data : Void*
    data2 : Void*
    data3 : Void*
    data4 : Void*
  end

  struct BaseInfo # struct
    dummy1 : Int32
    dummy2 : Int32
    dummy3 : Void*
    dummy4 : Void*
    dummy5 : Void*
    dummy6 : UInt32
    dummy7 : UInt32
    padding : Void*[4]
  end
  fun _g_base_info_gtype_get_type = g_base_info_gtype_get_type : UInt64
  fun base_info_equal = g_base_info_equal(this : BaseInfo*, info2 : LibGIRepository::BaseInfo*) : LibC::Int
  fun base_info_get_attribute = g_base_info_get_attribute(this : BaseInfo*, name : UInt8*) : UInt8*
  fun base_info_get_container = g_base_info_get_container(this : BaseInfo*) : LibGIRepository::BaseInfo*
  fun base_info_get_name = g_base_info_get_name(this : BaseInfo*) : UInt8*
  fun base_info_get_namespace = g_base_info_get_namespace(this : BaseInfo*) : UInt8*
  fun base_info_get_type = g_base_info_get_type(this : BaseInfo*) : LibGIRepository::InfoType
  fun base_info_get_typelib = g_base_info_get_typelib(this : BaseInfo*) : LibGIRepository::Typelib*
  fun base_info_is_deprecated = g_base_info_is_deprecated(this : BaseInfo*) : LibC::Int
  fun base_info_iterate_attributes = g_base_info_iterate_attributes(this : BaseInfo*, iterator : LibGIRepository::AttributeIter*, name : UInt8**, value : UInt8**) : LibC::Int

  struct RepositoryClass # struct
    parent : LibGObject::ObjectClass
  end

  struct RepositoryPrivate # struct
    _data : UInt8[0]
  end

  struct Typelib # struct
    _data : UInt8[0]
  end
  fun typelib_free = g_typelib_free(this : Typelib*) : Void
  fun typelib_get_namespace = g_typelib_get_namespace(this : Typelib*) : UInt8*
  fun typelib_symbol = g_typelib_symbol(this : Typelib*, symbol_name : UInt8*, symbol : Void*) : LibC::Int

  struct UnresolvedInfo # struct
    _data : UInt8[0]
  end

  ###########################################
  ##    Flags
  ###########################################

  alias FieldInfoFlags = UInt32

  alias FunctionInfoFlags = UInt32

  alias RepositoryLoadFlags = UInt32

  alias VFuncInfoFlags = UInt32

  ###########################################
  ##    Constants
  ###########################################
  MAJOR_VERSION = 1 # : Int32
  MICRO_VERSION = 1 # : Int32
  MINOR_VERSION = 66 # : Int32
  TYPE_TAG_N_TYPES = 22 # : Int32

  ###########################################
  ##    Objects
  ###########################################

  struct Repository # object
    parent : LibGObject::Object
    priv : LibGIRepository::RepositoryPrivate*
  end
  fun _g_irepository_get_type = g_irepository_get_type : UInt64
  fun repository_dump = g_irepository_dump(arg : UInt8*, error : LibGLib::Error**) : LibC::Int
  fun repository_error_quark = g_irepository_error_quark : UInt32
  fun repository_get_default = g_irepository_get_default : LibGIRepository::Repository*
  fun repository_get_option_group = g_irepository_get_option_group : LibGLib::OptionGroup*
  fun repository_get_search_path = g_irepository_get_search_path : Void**
  fun repository_prepend_library_path = g_irepository_prepend_library_path(directory : UInt8*) : Void
  fun repository_prepend_search_path = g_irepository_prepend_search_path(directory : UInt8*) : Void
  fun repository_enumerate_versions = g_irepository_enumerate_versions(this : Repository*, namespace_ : UInt8*) : Void**
  fun repository_find_by_error_domain = g_irepository_find_by_error_domain(this : Repository*, domain : UInt32) : LibGIRepository::BaseInfo*
  fun repository_find_by_gtype = g_irepository_find_by_gtype(this : Repository*, gtype : UInt64) : LibGIRepository::BaseInfo*
  fun repository_find_by_name = g_irepository_find_by_name(this : Repository*, namespace_ : UInt8*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun repository_get_c_prefix = g_irepository_get_c_prefix(this : Repository*, namespace_ : UInt8*) : UInt8*
  fun repository_get_dependencies = g_irepository_get_dependencies(this : Repository*, namespace_ : UInt8*) : UInt8**
  fun repository_get_immediate_dependencies = g_irepository_get_immediate_dependencies(this : Repository*, namespace_ : UInt8*) : UInt8**
  fun repository_get_info = g_irepository_get_info(this : Repository*, namespace_ : UInt8*, index : Int32) : LibGIRepository::BaseInfo*
  fun repository_get_loaded_namespaces = g_irepository_get_loaded_namespaces(this : Repository*) : UInt8**
  fun repository_get_n_infos = g_irepository_get_n_infos(this : Repository*, namespace_ : UInt8*) : Int32
  fun repository_get_object_gtype_interfaces = g_irepository_get_object_gtype_interfaces(this : Repository*, gtype : UInt64, n_interfaces_out : UInt32*, interfaces_out : LibGIRepository::BaseInfo***) : Void
  fun repository_get_shared_library = g_irepository_get_shared_library(this : Repository*, namespace_ : UInt8*) : UInt8*
  fun repository_get_typelib_path = g_irepository_get_typelib_path(this : Repository*, namespace_ : UInt8*) : UInt8*
  fun repository_get_version = g_irepository_get_version(this : Repository*, namespace_ : UInt8*) : UInt8*
  fun repository_is_registered = g_irepository_is_registered(this : Repository*, namespace_ : UInt8*, version : UInt8*) : LibC::Int
  fun repository_load_typelib = g_irepository_load_typelib(this : Repository*, typelib : LibGIRepository::Typelib*, flags : LibGIRepository::RepositoryLoadFlags, error : LibGLib::Error**) : UInt8*
  fun repository_require = g_irepository_require(this : Repository*, namespace_ : UInt8*, version : UInt8*, flags : LibGIRepository::RepositoryLoadFlags, error : LibGLib::Error**) : LibGIRepository::Typelib*
  fun repository_require_private = g_irepository_require_private(this : Repository*, typelib_dir : UInt8*, namespace_ : UInt8*, version : UInt8*, flags : LibGIRepository::RepositoryLoadFlags, error : LibGLib::Error**) : LibGIRepository::Typelib*

  ###########################################
  ##    Functions
  ###########################################
  fun arg_info_get_closure = g_arg_info_get_closure(info : LibGIRepository::BaseInfo*) : Int32
  fun arg_info_get_destroy = g_arg_info_get_destroy(info : LibGIRepository::BaseInfo*) : Int32
  fun arg_info_get_direction = g_arg_info_get_direction(info : LibGIRepository::BaseInfo*) : LibGIRepository::Direction
  fun arg_info_get_ownership_transfer = g_arg_info_get_ownership_transfer(info : LibGIRepository::BaseInfo*) : LibGIRepository::Transfer
  fun arg_info_get_scope = g_arg_info_get_scope(info : LibGIRepository::BaseInfo*) : LibGIRepository::ScopeType
  fun arg_info_get_type = g_arg_info_get_type(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun arg_info_is_caller_allocates = g_arg_info_is_caller_allocates(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun arg_info_is_optional = g_arg_info_is_optional(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun arg_info_is_return_value = g_arg_info_is_return_value(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun arg_info_is_skip = g_arg_info_is_skip(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun arg_info_load_type = g_arg_info_load_type(info : LibGIRepository::BaseInfo*, type : LibGIRepository::BaseInfo*) : Void
  fun arg_info_may_be_null = g_arg_info_may_be_null(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun callable_info_can_throw_gerror = g_callable_info_can_throw_gerror(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun callable_info_get_arg = g_callable_info_get_arg(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun callable_info_get_caller_owns = g_callable_info_get_caller_owns(info : LibGIRepository::BaseInfo*) : LibGIRepository::Transfer
  fun callable_info_get_instance_ownership_transfer = g_callable_info_get_instance_ownership_transfer(info : LibGIRepository::BaseInfo*) : LibGIRepository::Transfer
  fun callable_info_get_n_args = g_callable_info_get_n_args(info : LibGIRepository::BaseInfo*) : Int32
  fun callable_info_get_return_attribute = g_callable_info_get_return_attribute(info : LibGIRepository::BaseInfo*, name : UInt8*) : UInt8*
  fun callable_info_get_return_type = g_callable_info_get_return_type(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun callable_info_invoke = g_callable_info_invoke(info : LibGIRepository::BaseInfo*, function : Void*, in_args : LibGIRepository::Argument*, n_in_args : Int32, out_args : LibGIRepository::Argument*, n_out_args : Int32, return_value : LibGIRepository::Argument*, is_method : LibC::Int, throws : LibC::Int, error : LibGLib::Error**) : LibC::Int
  fun callable_info_is_method = g_callable_info_is_method(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun callable_info_iterate_return_attributes = g_callable_info_iterate_return_attributes(info : LibGIRepository::BaseInfo*, iterator : LibGIRepository::AttributeIter*, name : UInt8**, value : UInt8**) : LibC::Int
  fun callable_info_load_arg = g_callable_info_load_arg(info : LibGIRepository::BaseInfo*, n : Int32, arg : LibGIRepository::BaseInfo*) : Void
  fun callable_info_load_return_type = g_callable_info_load_return_type(info : LibGIRepository::BaseInfo*, type : LibGIRepository::BaseInfo*) : Void
  fun callable_info_may_return_null = g_callable_info_may_return_null(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun callable_info_skip_return = g_callable_info_skip_return(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun cclosure_marshal_generic = gi_cclosure_marshal_generic(closure : LibGObject::Closure*, return_gvalue : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun constant_info_get_type = g_constant_info_get_type(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun enum_info_get_error_domain = g_enum_info_get_error_domain(info : LibGIRepository::BaseInfo*) : UInt8*
  fun enum_info_get_method = g_enum_info_get_method(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun enum_info_get_n_methods = g_enum_info_get_n_methods(info : LibGIRepository::BaseInfo*) : Int32
  fun enum_info_get_n_values = g_enum_info_get_n_values(info : LibGIRepository::BaseInfo*) : Int32
  fun enum_info_get_storage_type = g_enum_info_get_storage_type(info : LibGIRepository::BaseInfo*) : LibGIRepository::TypeTag
  fun enum_info_get_value = g_enum_info_get_value(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun field_info_get_flags = g_field_info_get_flags(info : LibGIRepository::BaseInfo*) : LibGIRepository::FieldInfoFlags
  fun field_info_get_offset = g_field_info_get_offset(info : LibGIRepository::BaseInfo*) : Int32
  fun field_info_get_size = g_field_info_get_size(info : LibGIRepository::BaseInfo*) : Int32
  fun field_info_get_type = g_field_info_get_type(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun function_info_get_flags = g_function_info_get_flags(info : LibGIRepository::BaseInfo*) : LibGIRepository::FunctionInfoFlags
  fun function_info_get_property = g_function_info_get_property(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun function_info_get_symbol = g_function_info_get_symbol(info : LibGIRepository::BaseInfo*) : UInt8*
  fun function_info_get_vfunc = g_function_info_get_vfunc(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun get_major_version = gi_get_major_version : UInt32
  fun get_micro_version = gi_get_micro_version : UInt32
  fun get_minor_version = gi_get_minor_version : UInt32
  fun info_new = g_info_new(type : LibGIRepository::InfoType, container : LibGIRepository::BaseInfo*, typelib : LibGIRepository::Typelib*, offset : UInt32) : LibGIRepository::BaseInfo*
  fun info_type_to_string = g_info_type_to_string(type : LibGIRepository::InfoType) : UInt8*
  fun interface_info_find_method = g_interface_info_find_method(info : LibGIRepository::BaseInfo*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun interface_info_find_signal = g_interface_info_find_signal(info : LibGIRepository::BaseInfo*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun interface_info_find_vfunc = g_interface_info_find_vfunc(info : LibGIRepository::BaseInfo*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun interface_info_get_constant = g_interface_info_get_constant(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun interface_info_get_iface_struct = g_interface_info_get_iface_struct(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun interface_info_get_method = g_interface_info_get_method(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun interface_info_get_n_constants = g_interface_info_get_n_constants(info : LibGIRepository::BaseInfo*) : Int32
  fun interface_info_get_n_methods = g_interface_info_get_n_methods(info : LibGIRepository::BaseInfo*) : Int32
  fun interface_info_get_n_prerequisites = g_interface_info_get_n_prerequisites(info : LibGIRepository::BaseInfo*) : Int32
  fun interface_info_get_n_properties = g_interface_info_get_n_properties(info : LibGIRepository::BaseInfo*) : Int32
  fun interface_info_get_n_signals = g_interface_info_get_n_signals(info : LibGIRepository::BaseInfo*) : Int32
  fun interface_info_get_n_vfuncs = g_interface_info_get_n_vfuncs(info : LibGIRepository::BaseInfo*) : Int32
  fun interface_info_get_prerequisite = g_interface_info_get_prerequisite(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun interface_info_get_property = g_interface_info_get_property(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun interface_info_get_signal = g_interface_info_get_signal(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun interface_info_get_vfunc = g_interface_info_get_vfunc(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun invoke_error_quark = g_invoke_error_quark : UInt32
  fun object_info_find_method = g_object_info_find_method(info : LibGIRepository::BaseInfo*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun object_info_find_method_using_interfaces = g_object_info_find_method_using_interfaces(info : LibGIRepository::BaseInfo*, name : UInt8*, implementor : LibGIRepository::BaseInfo**) : LibGIRepository::BaseInfo*
  fun object_info_find_signal = g_object_info_find_signal(info : LibGIRepository::BaseInfo*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun object_info_find_vfunc = g_object_info_find_vfunc(info : LibGIRepository::BaseInfo*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun object_info_find_vfunc_using_interfaces = g_object_info_find_vfunc_using_interfaces(info : LibGIRepository::BaseInfo*, name : UInt8*, implementor : LibGIRepository::BaseInfo**) : LibGIRepository::BaseInfo*
  fun object_info_get_abstract = g_object_info_get_abstract(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun object_info_get_class_struct = g_object_info_get_class_struct(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun object_info_get_constant = g_object_info_get_constant(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun object_info_get_field = g_object_info_get_field(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun object_info_get_fundamental = g_object_info_get_fundamental(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun object_info_get_get_value_function = g_object_info_get_get_value_function(info : LibGIRepository::BaseInfo*) : UInt8*
  fun object_info_get_interface = g_object_info_get_interface(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun object_info_get_method = g_object_info_get_method(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun object_info_get_n_constants = g_object_info_get_n_constants(info : LibGIRepository::BaseInfo*) : Int32
  fun object_info_get_n_fields = g_object_info_get_n_fields(info : LibGIRepository::BaseInfo*) : Int32
  fun object_info_get_n_interfaces = g_object_info_get_n_interfaces(info : LibGIRepository::BaseInfo*) : Int32
  fun object_info_get_n_methods = g_object_info_get_n_methods(info : LibGIRepository::BaseInfo*) : Int32
  fun object_info_get_n_properties = g_object_info_get_n_properties(info : LibGIRepository::BaseInfo*) : Int32
  fun object_info_get_n_signals = g_object_info_get_n_signals(info : LibGIRepository::BaseInfo*) : Int32
  fun object_info_get_n_vfuncs = g_object_info_get_n_vfuncs(info : LibGIRepository::BaseInfo*) : Int32
  fun object_info_get_parent = g_object_info_get_parent(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun object_info_get_property = g_object_info_get_property(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun object_info_get_ref_function = g_object_info_get_ref_function(info : LibGIRepository::BaseInfo*) : UInt8*
  fun object_info_get_set_value_function = g_object_info_get_set_value_function(info : LibGIRepository::BaseInfo*) : UInt8*
  fun object_info_get_signal = g_object_info_get_signal(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun object_info_get_type_init = g_object_info_get_type_init(info : LibGIRepository::BaseInfo*) : UInt8*
  fun object_info_get_type_name = g_object_info_get_type_name(info : LibGIRepository::BaseInfo*) : UInt8*
  fun object_info_get_unref_function = g_object_info_get_unref_function(info : LibGIRepository::BaseInfo*) : UInt8*
  fun object_info_get_vfunc = g_object_info_get_vfunc(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun property_info_get_flags = g_property_info_get_flags(info : LibGIRepository::BaseInfo*) : LibGObject::ParamFlags
  fun property_info_get_ownership_transfer = g_property_info_get_ownership_transfer(info : LibGIRepository::BaseInfo*) : LibGIRepository::Transfer
  fun property_info_get_type = g_property_info_get_type(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun registered_type_info_get_g_type = g_registered_type_info_get_g_type(info : LibGIRepository::BaseInfo*) : UInt64
  fun registered_type_info_get_type_init = g_registered_type_info_get_type_init(info : LibGIRepository::BaseInfo*) : UInt8*
  fun registered_type_info_get_type_name = g_registered_type_info_get_type_name(info : LibGIRepository::BaseInfo*) : UInt8*
  fun signal_info_get_class_closure = g_signal_info_get_class_closure(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun signal_info_get_flags = g_signal_info_get_flags(info : LibGIRepository::BaseInfo*) : LibGObject::SignalFlags
  fun signal_info_true_stops_emit = g_signal_info_true_stops_emit(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun struct_info_find_field = g_struct_info_find_field(info : LibGIRepository::BaseInfo*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun struct_info_find_method = g_struct_info_find_method(info : LibGIRepository::BaseInfo*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun struct_info_get_alignment = g_struct_info_get_alignment(info : LibGIRepository::BaseInfo*) : UInt64
  fun struct_info_get_field = g_struct_info_get_field(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun struct_info_get_method = g_struct_info_get_method(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun struct_info_get_n_fields = g_struct_info_get_n_fields(info : LibGIRepository::BaseInfo*) : Int32
  fun struct_info_get_n_methods = g_struct_info_get_n_methods(info : LibGIRepository::BaseInfo*) : Int32
  fun struct_info_get_size = g_struct_info_get_size(info : LibGIRepository::BaseInfo*) : UInt64
  fun struct_info_is_foreign = g_struct_info_is_foreign(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun struct_info_is_gtype_struct = g_struct_info_is_gtype_struct(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun type_info_argument_from_hash_pointer = g_type_info_argument_from_hash_pointer(info : LibGIRepository::BaseInfo*, hash_pointer : Void*, arg : LibGIRepository::Argument*) : Void
  fun type_info_get_array_fixed_size = g_type_info_get_array_fixed_size(info : LibGIRepository::BaseInfo*) : Int32
  fun type_info_get_array_length = g_type_info_get_array_length(info : LibGIRepository::BaseInfo*) : Int32
  fun type_info_get_array_type = g_type_info_get_array_type(info : LibGIRepository::BaseInfo*) : LibGIRepository::ArrayType
  fun type_info_get_interface = g_type_info_get_interface(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun type_info_get_param_type = g_type_info_get_param_type(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun type_info_get_storage_type = g_type_info_get_storage_type(info : LibGIRepository::BaseInfo*) : LibGIRepository::TypeTag
  fun type_info_get_tag = g_type_info_get_tag(info : LibGIRepository::BaseInfo*) : LibGIRepository::TypeTag
  fun type_info_hash_pointer_from_argument = g_type_info_hash_pointer_from_argument(info : LibGIRepository::BaseInfo*, arg : LibGIRepository::Argument*) : Void*
  fun type_info_is_pointer = g_type_info_is_pointer(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun type_info_is_zero_terminated = g_type_info_is_zero_terminated(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun type_tag_to_string = g_type_tag_to_string(type : LibGIRepository::TypeTag) : UInt8*
  fun union_info_find_method = g_union_info_find_method(info : LibGIRepository::BaseInfo*, name : UInt8*) : LibGIRepository::BaseInfo*
  fun union_info_get_alignment = g_union_info_get_alignment(info : LibGIRepository::BaseInfo*) : UInt64
  fun union_info_get_discriminator = g_union_info_get_discriminator(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun union_info_get_discriminator_offset = g_union_info_get_discriminator_offset(info : LibGIRepository::BaseInfo*) : Int32
  fun union_info_get_discriminator_type = g_union_info_get_discriminator_type(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun union_info_get_field = g_union_info_get_field(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun union_info_get_method = g_union_info_get_method(info : LibGIRepository::BaseInfo*, n : Int32) : LibGIRepository::BaseInfo*
  fun union_info_get_n_fields = g_union_info_get_n_fields(info : LibGIRepository::BaseInfo*) : Int32
  fun union_info_get_n_methods = g_union_info_get_n_methods(info : LibGIRepository::BaseInfo*) : Int32
  fun union_info_get_size = g_union_info_get_size(info : LibGIRepository::BaseInfo*) : UInt64
  fun union_info_is_discriminated = g_union_info_is_discriminated(info : LibGIRepository::BaseInfo*) : LibC::Int
  fun value_info_get_value = g_value_info_get_value(info : LibGIRepository::BaseInfo*) : Int64
  fun vfunc_info_get_address = g_vfunc_info_get_address(info : LibGIRepository::BaseInfo*, implementor_gtype : UInt64, error : LibGLib::Error**) : Void*
  fun vfunc_info_get_flags = g_vfunc_info_get_flags(info : LibGIRepository::BaseInfo*) : LibGIRepository::VFuncInfoFlags
  fun vfunc_info_get_invoker = g_vfunc_info_get_invoker(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
  fun vfunc_info_get_offset = g_vfunc_info_get_offset(info : LibGIRepository::BaseInfo*) : Int32
  fun vfunc_info_get_signal = g_vfunc_info_get_signal(info : LibGIRepository::BaseInfo*) : LibGIRepository::BaseInfo*
end
