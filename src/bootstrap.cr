@[Link("glib-2.0")]
lib LibGLib
  alias GSize = UInt64
  alias GBool = Bool
  alias GChar = UInt8
  alias GInt = Int32
  alias GUInt32 = UInt32
  alias GInt64 = Int64
  alias GQuark = GUInt32
  alias GType = GSize

  struct Error
    domain : GQuark
    code : GInt
    message : GChar*
  end
end

@[Link("gobject-introspection-1.0")]
lib LibGIRepository
  alias Repository = Void*
  alias TypeLib = Void*
  alias BaseInfo = Void*
  alias ArgInfo = Void*
  alias CallableInfo = Void*
  alias FunctionInfo = Void*
  alias EnumInfo = Void*
  alias UnionInfo = Void*
  alias StructInfo = Void*
  alias ValueInfo = Void*
  alias TypeInfo = Void*
  alias FieldInfo = Void*
  alias ObjectInfo = Void*
  alias ConstantInfo = Void*
  alias InterfaceInfo = Void*
  alias PropertyInfo = Void*
  alias SignalInfo = Void*
  alias VFuncInfo = Void*


  enum RepositoryLoadFlags
    ZERO_NONE = 0
    LAZY
  end

  enum InfoType
    INVALID
    FUNCTION
    CALLBACK
    STRUCT
    BOXED
    ENUM
    FLAGS
    OBJECT
    INTERFACE
    CONSTANT
    INVALID_0
    UNION
    VALUE
    SIGNAL
    VFUNC
    PROPERTY
    FIELD
    ARG
    TYPE
    UNRESOLVED

    def hash
      value.hash
    end
  end

  enum Direction
    IN = 0
    OUT = 1
    INOUT = 2
    def hash; value.hash; end
  end

  enum TypeTag
    VOID = 0
    BOOLEAN = 1
    INT8 = 2
    UINT8 = 3
    INT16 = 4
    UINT16 = 5
    INT32 = 6
    UINT32 = 7
    INT64 = 8
    UINT64 = 9
    FLOAT = 10
    DOUBLE = 11
    GTYPE = 12
    UTF8 = 13
    FILENAME = 14
    ARRAY = 15
    INTERFACE = 16
    GLIST = 17
    GSLIST = 18
    GHASH = 19
    ERROR = 20
    UNICHAR = 21
  end

  enum ArrayType
    C = 0
    ARRAY = 1
    PTR_ARRAY = 2
    BYTE_ARRAY = 3
  end

  union Argument
    v_boolean : Bool
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

  struct AttributeIter
    data : Void*
    data2 : Void*
    data3 : Void*
    data4 : Void*
  end

  fun repository_get_default = g_irepository_get_default() : Repository
  fun repository_get_loaded_namespaces = g_irepository_get_loaded_namespaces(repository : Repository) : LibGLib::GChar**
  fun repository_require = g_irepository_require(repository : Repository, namespace : LibGLib::GChar*, version : LibGLib::GChar*, flags : RepositoryLoadFlags, error : LibGLib::Error**) : TypeLib
  fun repository_get_dependencies = g_irepository_get_dependencies(repository : Repository, namespace : LibGLib::GChar*) : LibGLib::GChar**
  fun repository_get_c_prefix = g_irepository_get_c_prefix(repository : Repository, namespace : LibGLib::GChar*) : LibGLib::GChar*
  fun repository_get_version = g_irepository_get_version(repository : Repository, namespace : LibGLib::GChar*) : LibGLib::GChar*
  fun repository_get_typelib_path = g_irepository_get_typelib_path(repository : Repository, namespace : LibGLib::GChar*) : LibGLib::GChar*
  fun repository_get_shared_library = g_irepository_get_shared_library(repository : Repository, namespace : LibGLib::GChar*) : LibGLib::GChar*
  fun repository_get_n_infos = g_irepository_get_n_infos(repository : Repository, namespace : LibGLib::GChar*) : LibGLib::GInt
  fun repository_get_info = g_irepository_get_info(repository : Repository, namespace : LibGLib::GChar*, index : LibGLib::GInt) : BaseInfo

  fun base_info_ref = g_base_info_ref(info : BaseInfo)
  fun base_info_unref = g_base_info_unref(info : BaseInfo)
  fun base_info_get_type = g_base_info_get_type(info : BaseInfo) : InfoType
  fun base_info_get_name = g_base_info_get_name(info : BaseInfo) : LibGLib::GChar*
  fun base_info_get_namespace = g_base_info_get_namespace(info : BaseInfo) : LibGLib::GChar*
  fun base_info_get_container = g_base_info_get_container(info : BaseInfo) : BaseInfo
  fun base_info_iterate_attributes = g_base_info_iterate_attributes(this : BaseInfo, iterator : AttributeIter*, name : UInt8**, value : UInt8**) : LibGLib::GBool

  fun enum_info_get_n_values = g_enum_info_get_n_values(info : EnumInfo) : LibGLib::GInt
  fun enum_info_get_value = g_enum_info_get_value(info : EnumInfo, index : LibGLib::GInt) : ValueInfo
  fun enum_info_get_n_methods = g_enum_info_get_n_methods(info : EnumInfo) : LibGLib::GInt
  fun enum_info_get_method = g_enum_info_get_method(info : EnumInfo, index : LibGLib::GInt) : FunctionInfo

  fun value_info_get_value = g_value_info_get_value(info : ValueInfo) : LibGLib::GInt64

  fun union_info_get_n_fields = g_union_info_get_n_fields(info : UnionInfo) : LibGLib::GInt
  fun union_info_get_field = g_union_info_get_field(info : UnionInfo, index : LibGLib::GInt) : FieldInfo
  fun union_info_get_n_methods = g_union_info_get_n_methods(info : UnionInfo) : LibGLib::GInt
  fun union_info_get_method = g_union_info_get_method(info : UnionInfo, index : LibGLib::GInt) : FunctionInfo

  fun struct_info_is_gtype_struct = g_struct_info_is_gtype_struct(info : StructInfo) : LibGLib::GBool
  fun struct_info_get_n_fields = g_struct_info_get_n_fields(info : StructInfo) : LibGLib::GInt
  fun struct_info_get_field = g_struct_info_get_field(info : StructInfo, index : LibGLib::GInt) : FieldInfo
  fun struct_info_get_n_methods = g_struct_info_get_n_methods(info : StructInfo) : LibGLib::GInt
  fun struct_info_get_method = g_struct_info_get_method(info : StructInfo, index : LibGLib::GInt) : FunctionInfo

  fun object_info_get_n_interfaces = g_object_info_get_n_interfaces(info : ObjectInfo) : LibGLib::GInt
  fun object_info_get_interface = g_object_info_get_interface(info : ObjectInfo, index : LibGLib::GInt) : InterfaceInfo
  fun object_info_get_n_constants = g_object_info_get_n_constants(info : ObjectInfo) : LibGLib::GInt
  fun object_info_get_constant = g_object_info_get_constant(info : ObjectInfo, index : LibGLib::GInt) : ConstantInfo
  fun object_info_get_n_fields = g_object_info_get_n_fields(info : ObjectInfo) : LibGLib::GInt
  fun object_info_get_field = g_object_info_get_field(info : ObjectInfo, index : LibGLib::GInt) : FieldInfo
  fun object_info_get_n_properties = g_object_info_get_n_properties(info : ObjectInfo) : LibGLib::GInt
  fun object_info_get_property = g_object_info_get_property(info : ObjectInfo, index : LibGLib::GInt) : PropertyInfo
  fun object_info_get_n_methods = g_object_info_get_n_methods(info : ObjectInfo) : LibGLib::GInt
  fun object_info_get_method = g_object_info_get_method(info : ObjectInfo, index : LibGLib::GInt) : FunctionInfo
  fun object_info_get_n_signals = g_object_info_get_n_signals(info : ObjectInfo) : LibGLib::GInt
  fun object_info_get_signal = g_object_info_get_signal(info : ObjectInfo, index : LibGLib::GInt) : SignalInfo
  fun object_info_get_n_vfuncs = g_object_info_get_n_vfuncs(info : ObjectInfo) : LibGLib::GInt
  fun object_info_get_vfunc = g_object_info_get_vfunc(info : ObjectInfo, index : LibGLib::GInt) : VFuncInfo

  fun interface_info_get_n_constants = g_interface_info_get_n_constants(info : InterfaceInfo) : LibGLib::GInt
  fun interface_info_get_constant = g_interface_info_get_constant(info : InterfaceInfo, index : LibGLib::GInt) : ConstantInfo
  fun interface_info_get_n_prerequisites = g_interface_info_get_n_prerequisites(info : InterfaceInfo) : LibGLib::GInt
  fun interface_info_get_prerequisite = g_interface_info_get_prerequisite(info : InterfaceInfo, index : LibGLib::GInt) : BaseInfo
  fun interface_info_get_n_properties = g_interface_info_get_n_properties(info : InterfaceInfo) : LibGLib::GInt
  fun interface_info_get_property = g_interface_info_get_property(info : InterfaceInfo, index : LibGLib::GInt) : PropertyInfo
  fun interface_info_get_n_signals = g_interface_info_get_n_signals(info : InterfaceInfo) : LibGLib::GInt
  fun interface_info_get_signal = g_interface_info_get_signal(info : InterfaceInfo, index : LibGLib::GInt) : SignalInfo
  fun interface_info_get_n_methods = g_interface_info_get_n_methods(info : InterfaceInfo) : LibGLib::GInt
  fun interface_info_get_method = g_interface_info_get_method(info : InterfaceInfo, index : LibGLib::GInt) : FunctionInfo
  fun interface_info_get_n_vfuncs = g_interface_info_get_n_vfuncs(info : InterfaceInfo) : LibGLib::GInt
  fun interface_info_get_vfunc = g_interface_info_get_vfunc(info : InterfaceInfo, index : LibGLib::GInt) : VFuncInfo
  fun interface_info_get_iface_struct = g_interface_info_get_iface_struct(info : InterfaceInfo) : StructInfo

  fun field_info_get_type = g_field_info_get_type(info : FieldInfo) : TypeInfo

  fun arg_info_get_direction = g_arg_info_get_direction(info : ArgInfo) : Direction
  fun arg_info_get_type = g_arg_info_get_type(info : ArgInfo) : TypeInfo

  # fun type_info_get_array_fixed_size = g_type_info_get_array_fixed_size(info : TypeInfo)
  # fun type_info_get_array_length = g_type_info_get_array_length(info : TypeInfo)
  fun type_info_get_array_type = g_type_info_get_array_type(info : TypeInfo) : ArrayType
  fun type_info_get_interface = g_type_info_get_interface(info : TypeInfo) : BaseInfo
  fun type_info_get_param_type = g_type_info_get_param_type(info : TypeInfo, n : LibGLib::GInt) : TypeInfo
  fun type_info_get_tag = g_type_info_get_tag(info : TypeInfo) : TypeTag
  fun type_info_is_pointer = g_type_info_is_pointer(info : TypeInfo) : LibGLib::GBool
  # fun type_info_is_zero_terminated = g_type_info_is_zero_terminated(info : TypeInfo)
  fun type_info_to_string = g_info_type_to_string(info : TypeInfo) : LibGLib::GChar*

  fun callable_info_get_n_args = g_callable_info_get_n_args(info : CallableInfo) : LibGLib::GInt
  fun callable_info_get_arg = g_callable_info_get_arg(info : CallableInfo, index : LibGLib::GInt) : ArgInfo
  fun callable_info_get_return_type = g_callable_info_get_return_type(info : CallableInfo) : TypeInfo
  fun callable_info_is_method = g_callable_info_is_method(info : CallableInfo) : LibGLib::GBool
  fun callable_info_can_throw_gerror = g_callable_info_can_throw_gerror(info : CallableInfo) : LibGLib::GBool

  fun function_info_get_symbol = g_function_info_get_symbol(info : FunctionInfo) : LibGLib::GChar*

  fun constant_info_get_value = g_constant_info_get_value(info : ConstantInfo, argument : Argument*) : LibGLib::GInt
  fun constant_info_free_value = g_constant_info_free_value(info : ConstantInfo, argument : Argument*)
  fun constant_info_get_type = g_constant_info_get_type(info : ConstantInfo) : TypeInfo

  fun property_info_get_type = g_property_info_get_type(info : PropertyInfo) : TypeInfo
end


require "./generator"
