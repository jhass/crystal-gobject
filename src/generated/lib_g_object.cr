require "./lib_g_lib"

@[Link("gobject-2.0")]
lib LibGObject

  ###########################################
  ##    Objects
  ###########################################

  struct Binding # object
    _data : UInt8[0]
    # Property flags : LibGObject::BindingFlags
    # Property source : LibGObject::Object*
    # Property source_property : UInt8*
    # Property target : LibGObject::Object*
    # Property target_property : UInt8*
  end
  fun binding_get_flags = g_binding_get_flags(this : Binding*) : LibGObject::BindingFlags
  fun binding_get_source = g_binding_get_source(this : Binding*) : LibGObject::Object*
  fun binding_get_source_property = g_binding_get_source_property(this : Binding*) : UInt8*
  fun binding_get_target = g_binding_get_target(this : Binding*) : LibGObject::Object*
  fun binding_get_target_property = g_binding_get_target_property(this : Binding*) : UInt8*
  fun binding_unbind = g_binding_unbind(this : Binding*) : Void

  struct InitiallyUnowned # object
    g_type_instance : LibGObject::TypeInstance
    ref_count : UInt32
    qdata : LibGLib::Data*
  end

  struct Object # object
    g_type_instance : LibGObject::TypeInstance
    ref_count : UInt32
    qdata : LibGLib::Data*
    # Signal notify
    # Virtual function constructed
    # Virtual function dispatch_properties_changed
    # Virtual function dispose
    # Virtual function finalize
    # Virtual function get_property
    # Virtual function notify
    # Virtual function set_property
  end
  fun object_newv = g_object_newv(object_type : UInt64, n_parameters : UInt32, parameters : LibGObject::Parameter*) : LibGObject::Object*
  fun object_compat_control = g_object_compat_control(what : UInt64, data : Void*) : UInt64
  fun object_interface_find_property = g_object_interface_find_property(g_iface : LibGObject::TypeInterface*, property_name : UInt8*) : LibGObject::ParamSpec*
  fun object_interface_install_property = g_object_interface_install_property(g_iface : LibGObject::TypeInterface*, pspec : LibGObject::ParamSpec*) : Void
  fun object_interface_list_properties = g_object_interface_list_properties(g_iface : LibGObject::TypeInterface*, n_properties_p : UInt32*) : LibGObject::ParamSpec**
  fun object_bind_property = g_object_bind_property(this : Object*, source_property : UInt8*, target : LibGObject::Object*, target_property : UInt8*, flags : LibGObject::BindingFlags) : LibGObject::Binding*
  fun object_bind_property_full = g_object_bind_property_with_closures(this : Object*, source_property : UInt8*, target : LibGObject::Object*, target_property : UInt8*, flags : LibGObject::BindingFlags, transform_to : LibGObject::Closure*, transform_from : LibGObject::Closure*) : LibGObject::Binding*
  fun object_force_floating = g_object_force_floating(this : Object*) : Void
  fun object_freeze_notify = g_object_freeze_notify(this : Object*) : Void
  fun object_get_data = g_object_get_data(this : Object*, key : UInt8*) : Void*
  fun object_get_property = g_object_get_property(this : Object*, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun object_get_qdata = g_object_get_qdata(this : Object*, quark : UInt32) : Void*
  fun object_getv = g_object_getv(this : Object*, n_properties : UInt32, names : UInt8**, values : LibGObject::Value*) : Void
  fun object_is_floating = g_object_is_floating(this : Object*) : Bool
  fun object_notify = g_object_notify(this : Object*, property_name : UInt8*) : Void
  fun object_notify_by_pspec = g_object_notify_by_pspec(this : Object*, pspec : LibGObject::ParamSpec*) : Void
  fun object_ref = g_object_ref(this : Object*) : LibGObject::Object*
  fun object_ref_sink = g_object_ref_sink(this : Object*) : LibGObject::Object*
  fun object_run_dispose = g_object_run_dispose(this : Object*) : Void
  fun object_set_data = g_object_set_data(this : Object*, key : UInt8*, data : Void*) : Void
  fun object_set_property = g_object_set_property(this : Object*, property_name : UInt8*, value : LibGObject::Value*) : Void
  fun object_steal_data = g_object_steal_data(this : Object*, key : UInt8*) : Void*
  fun object_steal_qdata = g_object_steal_qdata(this : Object*, quark : UInt32) : Void*
  fun object_thaw_notify = g_object_thaw_notify(this : Object*) : Void
  fun object_unref = g_object_unref(this : Object*) : Void
  fun object_watch_closure = g_object_watch_closure(this : Object*, closure : LibGObject::Closure*) : Void

  struct ParamSpec # object
    g_type_instance : LibGObject::TypeInstance
    name : UInt8*
    flags : LibGObject::ParamFlags
    value_type : UInt64
    owner_type : UInt64
    _nick : UInt8*
    _blurb : UInt8*
    qdata : LibGLib::Data*
    ref_count : UInt32
    param_id : UInt32
    # Virtual function finalize
    # Virtual function value_set_default
    # Virtual function value_validate
    # Virtual function values_cmp
  end
  fun param_spec_get_blurb = g_param_spec_get_blurb(this : ParamSpec*) : UInt8*
  fun param_spec_get_default_value = g_param_spec_get_default_value(this : ParamSpec*) : LibGObject::Value*
  fun param_spec_get_name = g_param_spec_get_name(this : ParamSpec*) : UInt8*
  fun param_spec_get_name_quark = g_param_spec_get_name_quark(this : ParamSpec*) : UInt32
  fun param_spec_get_nick = g_param_spec_get_nick(this : ParamSpec*) : UInt8*
  fun param_spec_get_qdata = g_param_spec_get_qdata(this : ParamSpec*, quark : UInt32) : Void*
  fun param_spec_get_redirect_target = g_param_spec_get_redirect_target(this : ParamSpec*) : LibGObject::ParamSpec*
  fun param_spec_set_qdata = g_param_spec_set_qdata(this : ParamSpec*, quark : UInt32, data : Void*) : Void
  fun param_spec_sink = g_param_spec_sink(this : ParamSpec*) : Void
  fun param_spec_steal_qdata = g_param_spec_steal_qdata(this : ParamSpec*, quark : UInt32) : Void*

  struct ParamSpecBoolean # object
    parent_instance : LibGObject::ParamSpec*
    default_value : Bool
  end

  struct ParamSpecBoxed # object
    parent_instance : LibGObject::ParamSpec*
  end

  struct ParamSpecChar # object
    parent_instance : LibGObject::ParamSpec*
    minimum : Int8
    maximum : Int8
    default_value : Int8
  end

  struct ParamSpecDouble # object
    parent_instance : LibGObject::ParamSpec*
    minimum : Float64
    maximum : Float64
    default_value : Float64
    epsilon : Float64
  end

  struct ParamSpecEnum # object
    parent_instance : LibGObject::ParamSpec*
    enum_class : LibGObject::EnumClass*
    default_value : Int32
  end

  struct ParamSpecFlags # object
    parent_instance : LibGObject::ParamSpec*
    flags_class : LibGObject::FlagsClass*
    default_value : UInt32
  end

  struct ParamSpecFloat # object
    parent_instance : LibGObject::ParamSpec*
    minimum : Float32
    maximum : Float32
    default_value : Float32
    epsilon : Float32
  end

  struct ParamSpecGType # object
    parent_instance : LibGObject::ParamSpec*
    is_a_type : UInt64
  end

  struct ParamSpecInt # object
    parent_instance : LibGObject::ParamSpec*
    minimum : Int32
    maximum : Int32
    default_value : Int32
  end

  struct ParamSpecInt64 # object
    parent_instance : LibGObject::ParamSpec*
    minimum : Int64
    maximum : Int64
    default_value : Int64
  end

  struct ParamSpecLong # object
    parent_instance : LibGObject::ParamSpec*
    minimum : Int64
    maximum : Int64
    default_value : Int64
  end

  struct ParamSpecObject # object
    parent_instance : LibGObject::ParamSpec*
  end

  struct ParamSpecOverride # object
    parent_instance : LibGObject::ParamSpec*
    overridden : LibGObject::ParamSpec*
  end

  struct ParamSpecParam # object
    parent_instance : LibGObject::ParamSpec*
  end

  struct ParamSpecPointer # object
    parent_instance : LibGObject::ParamSpec*
  end

  struct ParamSpecString # object
    parent_instance : LibGObject::ParamSpec*
    default_value : UInt8*
    cset_first : UInt8*
    cset_nth : UInt8*
    substitutor : Int8
    null_fold_if_empty : UInt32
    ensure_non_null : UInt32
  end

  struct ParamSpecUChar # object
    parent_instance : LibGObject::ParamSpec*
    minimum : UInt8
    maximum : UInt8
    default_value : UInt8
  end

  struct ParamSpecUInt # object
    parent_instance : LibGObject::ParamSpec*
    minimum : UInt32
    maximum : UInt32
    default_value : UInt32
  end

  struct ParamSpecUInt64 # object
    parent_instance : LibGObject::ParamSpec*
    minimum : UInt64
    maximum : UInt64
    default_value : UInt64
  end

  struct ParamSpecULong # object
    parent_instance : LibGObject::ParamSpec*
    minimum : UInt64
    maximum : UInt64
    default_value : UInt64
  end

  struct ParamSpecUnichar # object
    parent_instance : LibGObject::ParamSpec*
    default_value : UInt8
  end

  struct ParamSpecValueArray # object
    parent_instance : LibGObject::ParamSpec*
    element_spec : LibGObject::ParamSpec*
    fixed_n_elements : UInt32
  end

  struct ParamSpecVariant # object
    parent_instance : LibGObject::ParamSpec*
    type : LibGLib::VariantType*
    default_value : LibGLib::Variant*
    padding : Void*
  end

  struct TypeModule # object
    parent_instance : LibGObject::Object*
    use_count : UInt32
    type_infos : Void**
    interface_infos : Void**
    name : UInt8*
    # Virtual function load
    # Virtual function unload
  end
  fun type_module_add_interface = g_type_module_add_interface(this : TypeModule*, instance_type : UInt64, interface_type : UInt64, interface_info : LibGObject::InterfaceInfo*) : Void
  fun type_module_register_enum = g_type_module_register_enum(this : TypeModule*, name : UInt8*, const_static_values : LibGObject::EnumValue*) : UInt64
  fun type_module_register_flags = g_type_module_register_flags(this : TypeModule*, name : UInt8*, const_static_values : LibGObject::FlagsValue*) : UInt64
  fun type_module_register_type = g_type_module_register_type(this : TypeModule*, parent_type : UInt64, type_name : UInt8*, type_info : LibGObject::TypeInfo*, flags : LibGObject::TypeFlags) : UInt64
  fun type_module_set_name = g_type_module_set_name(this : TypeModule*, name : UInt8*) : Void
  fun type_module_unuse = g_type_module_unuse(this : TypeModule*) : Void
  fun type_module_use = g_type_module_use(this : TypeModule*) : Bool


  ###########################################
  ##    Flags
  ###########################################

  @[Flags]
  enum BindingFlags : UInt32
    ZERO_NONE = 0
    DEFAULT = 0
    BIDIRECTIONAL = 1
    SYNC_CREATE = 2
    INVERT_BOOLEAN = 4
  end

  @[Flags]
  enum ConnectFlags : UInt32
    ZERO_NONE = 0
    AFTER = 1
    SWAPPED = 2
  end

  @[Flags]
  enum ParamFlags : UInt32
    ZERO_NONE = 0
    READABLE = 1
    WRITABLE = 2
    READWRITE = 3
    CONSTRUCT = 4
    CONSTRUCT_ONLY = 8
    LAX_VALIDATION = 16
    STATIC_NAME = 32
    PRIVATE = 32
    STATIC_NICK = 64
    STATIC_BLURB = 128
    EXPLICIT_NOTIFY = 1073741824
    DEPRECATED = 2147483648
  end

  @[Flags]
  enum SignalFlags : UInt32
    ZERO_NONE = 0
    RUN_FIRST = 1
    RUN_LAST = 2
    RUN_CLEANUP = 4
    NO_RECURSE = 8
    DETAILED = 16
    ACTION = 32
    NO_HOOKS = 64
    MUST_COLLECT = 128
    DEPRECATED = 256
  end

  @[Flags]
  enum SignalMatchType : UInt32
    ZERO_NONE = 0
    ID = 1
    DETAIL = 2
    CLOSURE = 4
    FUNC = 8
    DATA = 16
    UNBLOCKED = 32
  end

  @[Flags]
  enum TypeDebugFlags : UInt32
    ZERO_NONE = 0
    NONE = 0
    OBJECTS = 1
    SIGNALS = 2
    INSTANCE_COUNT = 4
    MASK = 7
  end

  @[Flags]
  enum TypeFlags : UInt32
    ZERO_NONE = 0
    ABSTRACT = 16
    VALUE_ABSTRACT = 32
  end

  @[Flags]
  enum TypeFundamentalFlags : UInt32
    ZERO_NONE = 0
    CLASSED = 1
    INSTANTIATABLE = 2
    DERIVABLE = 4
    DEEP_DERIVABLE = 8
  end


  ###########################################
  ##    Structs
  ###########################################

  struct CClosure # struct
    closure : LibGObject::Closure
    callback : Void*
  end
  fun c_closure_marshal_BOOLEAN__BOXED_BOXED = g_cclosure_marshal_BOOLEAN__BOXED_BOXED(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_BOOLEAN__FLAGS = g_cclosure_marshal_BOOLEAN__FLAGS(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_STRING__OBJECT_POINTER = g_cclosure_marshal_STRING__OBJECT_POINTER(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__BOOLEAN = g_cclosure_marshal_VOID__BOOLEAN(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__BOXED = g_cclosure_marshal_VOID__BOXED(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__CHAR = g_cclosure_marshal_VOID__CHAR(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__DOUBLE = g_cclosure_marshal_VOID__DOUBLE(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__ENUM = g_cclosure_marshal_VOID__ENUM(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__FLAGS = g_cclosure_marshal_VOID__FLAGS(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__FLOAT = g_cclosure_marshal_VOID__FLOAT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__INT = g_cclosure_marshal_VOID__INT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__LONG = g_cclosure_marshal_VOID__LONG(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__OBJECT = g_cclosure_marshal_VOID__OBJECT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__PARAM = g_cclosure_marshal_VOID__PARAM(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__POINTER = g_cclosure_marshal_VOID__POINTER(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__STRING = g_cclosure_marshal_VOID__STRING(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__UCHAR = g_cclosure_marshal_VOID__UCHAR(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__UINT = g_cclosure_marshal_VOID__UINT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__UINT_POINTER = g_cclosure_marshal_VOID__UINT_POINTER(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__ULONG = g_cclosure_marshal_VOID__ULONG(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__VARIANT = g_cclosure_marshal_VOID__VARIANT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_VOID__VOID = g_cclosure_marshal_VOID__VOID(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun c_closure_marshal_generic = g_cclosure_marshal_generic(closure : LibGObject::Closure*, return_gvalue : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void

  struct Closure # struct
    ref_count : UInt32
    meta_marshal_nouse : UInt32
    n_guards : UInt32
    n_fnotifiers : UInt32
    n_inotifiers : UInt32
    in_inotify : UInt32
    floating : UInt32
    derivative_flag : UInt32
    in_marshal : UInt32
    is_invalid : UInt32
    marshal : -> Void
    data : Void*
    notifiers : LibGObject::ClosureNotifyData*
  end
  fun closure_new_object = g_closure_new_object(sizeof_closure : UInt32, object : LibGObject::Object*) : LibGObject::Closure*
  fun closure_new_simple = g_closure_new_simple(sizeof_closure : UInt32, data : Void*) : LibGObject::Closure*
  fun closure_invalidate = g_closure_invalidate(this : Closure*) : Void
  fun closure_invoke = g_closure_invoke(this : Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*) : Void
  fun closure_ref = g_closure_ref(this : Closure*) : LibGObject::Closure*
  fun closure_sink = g_closure_sink(this : Closure*) : Void
  fun closure_unref = g_closure_unref(this : Closure*) : Void

  struct ClosureNotifyData # struct
    data : Void*
    notify : LibGObject::ClosureNotify
  end

  struct EnumClass # struct
    g_type_class : LibGObject::TypeClass
    minimum : Int32
    maximum : Int32
    n_values : UInt32
    values : LibGObject::EnumValue*
  end

  struct EnumValue # struct
    value : Int32
    value_name : UInt8*
    value_nick : UInt8*
  end

  struct FlagsClass # struct
    g_type_class : LibGObject::TypeClass
    mask : UInt32
    n_values : UInt32
    values : LibGObject::FlagsValue*
  end

  struct FlagsValue # struct
    value : UInt32
    value_name : UInt8*
    value_nick : UInt8*
  end

  struct InterfaceInfo # struct
    interface_init : LibGObject::InterfaceInitFunc
    interface_finalize : LibGObject::InterfaceFinalizeFunc
    interface_data : Void*
  end

  struct ObjectConstructParam # struct
    pspec : LibGObject::ParamSpec*
    value : LibGObject::Value*
  end

  struct ParamSpecPool # struct
    _data : UInt8[0]
  end
  fun param_spec_pool_insert = g_param_spec_pool_insert(this : ParamSpecPool*, pspec : LibGObject::ParamSpec*, owner_type : UInt64) : Void
  fun param_spec_pool_list = g_param_spec_pool_list(this : ParamSpecPool*, owner_type : UInt64, n_pspecs_p : UInt32*) : LibGObject::ParamSpec**
  fun param_spec_pool_list_owned = g_param_spec_pool_list_owned(this : ParamSpecPool*, owner_type : UInt64) : Void**
  fun param_spec_pool_lookup = g_param_spec_pool_lookup(this : ParamSpecPool*, param_name : UInt8*, owner_type : UInt64, walk_ancestors : Bool) : LibGObject::ParamSpec*
  fun param_spec_pool_remove = g_param_spec_pool_remove(this : ParamSpecPool*, pspec : LibGObject::ParamSpec*) : Void
  fun param_spec_pool_new = g_param_spec_pool_new(type_prefixing : Bool) : LibGObject::ParamSpecPool*

  struct ParamSpecTypeInfo # struct
    instance_size : UInt16
    n_preallocs : UInt16
    instance_init : -> Void
    value_type : UInt64
    finalize : -> Void
    value_set_default : -> Void
    value_validate : -> Void
    values_cmp : -> Void
  end

  struct Parameter # struct
    name : UInt8*
    value : LibGObject::Value
  end

  struct SignalInvocationHint # struct
    signal_id : UInt32
    detail : UInt32
    run_type : LibGObject::SignalFlags
  end

  struct SignalQuery # struct
    signal_id : UInt32
    signal_name : UInt8*
    itype : UInt64
    signal_flags : LibGObject::SignalFlags
    return_type : UInt64
    n_params : UInt32
    param_types : UInt64*
  end

  struct TypeClass # struct
    g_type : UInt64
  end
  fun type_class_add_private = g_type_class_add_private(this : TypeClass*, private_size : UInt64) : Void
  fun type_class_get_private = g_type_class_get_private(this : TypeClass*, private_type : UInt64) : Void*
  fun type_class_peek_parent = g_type_class_peek_parent(this : TypeClass*) : LibGObject::TypeClass*
  fun type_class_unref = g_type_class_unref(this : TypeClass*) : Void
  fun type_class_adjust_private_offset = g_type_class_adjust_private_offset(g_class : Void*, private_size_or_offset : Int32*) : Void
  fun type_class_peek = g_type_class_peek(type : UInt64) : LibGObject::TypeClass*
  fun type_class_peek_static = g_type_class_peek_static(type : UInt64) : LibGObject::TypeClass*
  fun type_class_ref = g_type_class_ref(type : UInt64) : LibGObject::TypeClass*

  struct TypeFundamentalInfo # struct
    type_flags : LibGObject::TypeFundamentalFlags
  end

  struct TypeInfo # struct
    class_size : UInt16
    base_init : LibGObject::BaseInitFunc
    base_finalize : LibGObject::BaseFinalizeFunc
    class_init : LibGObject::ClassInitFunc
    class_finalize : LibGObject::ClassFinalizeFunc
    class_data : Void*
    instance_size : UInt16
    n_preallocs : UInt16
    instance_init : LibGObject::InstanceInitFunc
    value_table : LibGObject::TypeValueTable*
  end

  struct TypeInstance # struct
    g_class : LibGObject::TypeClass*
  end
  fun type_instance_get_private = g_type_instance_get_private(this : TypeInstance*, private_type : UInt64) : Void*

  struct TypeInterface # struct
    g_type : UInt64
    g_instance_type : UInt64
  end
  fun type_interface_peek_parent = g_type_interface_peek_parent(this : TypeInterface*) : LibGObject::TypeInterface*
  fun type_interface_add_prerequisite = g_type_interface_add_prerequisite(interface_type : UInt64, prerequisite_type : UInt64) : Void
  fun type_interface_get_plugin = g_type_interface_get_plugin(instance_type : UInt64, interface_type : UInt64) : LibGObject::TypePlugin*
  fun type_interface_peek = g_type_interface_peek(instance_class : LibGObject::TypeClass*, iface_type : UInt64) : LibGObject::TypeInterface*
  fun type_interface_prerequisites = g_type_interface_prerequisites(interface_type : UInt64, n_prerequisites : UInt32*) : UInt64*

  struct TypePluginClass # struct
    base_iface : LibGObject::TypeInterface
    use_plugin : LibGObject::TypePluginUse
    unuse_plugin : LibGObject::TypePluginUnuse
    complete_type_info : LibGObject::TypePluginCompleteTypeInfo
    complete_interface_info : LibGObject::TypePluginCompleteInterfaceInfo
  end

  struct TypeQuery # struct
    type : UInt64
    type_name : UInt8*
    class_size : UInt32
    instance_size : UInt32
  end

  struct TypeValueTable # struct
    value_init : -> Void
    value_free : -> Void
    value_copy : -> Void
    value_peek_pointer : -> Void
    collect_format : UInt8*
    collect_value : -> Void
    lcopy_format : UInt8*
    lcopy_value : -> Void
  end

  struct Value # struct
    g_type : UInt64
    data : LibGObject::G_Value__data__union
  end
  fun value_copy = g_value_copy(this : Value*, dest_value : LibGObject::Value*) : Void
  fun value_dup_object = g_value_dup_object(this : Value*) : LibGObject::Object*
  fun value_dup_string = g_value_dup_string(this : Value*) : UInt8*
  fun value_dup_variant = g_value_dup_variant(this : Value*) : LibGLib::Variant*
  fun value_fits_pointer = g_value_fits_pointer(this : Value*) : Bool
  fun value_get_boolean = g_value_get_boolean(this : Value*) : Bool
  fun value_get_boxed = g_value_get_boxed(this : Value*) : Void*
  fun value_get_char = g_value_get_char(this : Value*) : Int8
  fun value_get_double = g_value_get_double(this : Value*) : Float64
  fun value_get_enum = g_value_get_enum(this : Value*) : Int32
  fun value_get_flags = g_value_get_flags(this : Value*) : UInt32
  fun value_get_float = g_value_get_float(this : Value*) : Float32
  fun value_get_gtype = g_value_get_gtype(this : Value*) : UInt64
  fun value_get_int = g_value_get_int(this : Value*) : Int32
  fun value_get_int64 = g_value_get_int64(this : Value*) : Int64
  fun value_get_long = g_value_get_long(this : Value*) : Int64
  fun value_get_object = g_value_get_object(this : Value*) : LibGObject::Object*
  fun value_get_param = g_value_get_param(this : Value*) : LibGObject::ParamSpec*
  fun value_get_pointer = g_value_get_pointer(this : Value*) : Void*
  fun value_get_schar = g_value_get_schar(this : Value*) : Int8
  fun value_get_string = g_value_get_string(this : Value*) : UInt8*
  fun value_get_uchar = g_value_get_uchar(this : Value*) : UInt8
  fun value_get_uint = g_value_get_uint(this : Value*) : UInt32
  fun value_get_uint64 = g_value_get_uint64(this : Value*) : UInt64
  fun value_get_ulong = g_value_get_ulong(this : Value*) : UInt64
  fun value_get_variant = g_value_get_variant(this : Value*) : LibGLib::Variant*
  fun value_init = g_value_init(this : Value*, g_type : UInt64) : LibGObject::Value*
  fun value_init_from_instance = g_value_init_from_instance(this : Value*, instance : LibGObject::TypeInstance*) : Void
  fun value_peek_pointer = g_value_peek_pointer(this : Value*) : Void*
  fun value_reset = g_value_reset(this : Value*) : LibGObject::Value*
  fun value_set_boolean = g_value_set_boolean(this : Value*, v_boolean : Bool) : Void
  fun value_set_boxed = g_value_set_boxed(this : Value*, v_boxed : Void*) : Void
  fun value_set_boxed_take_ownership = g_value_set_boxed_take_ownership(this : Value*, v_boxed : Void*) : Void
  fun value_set_char = g_value_set_char(this : Value*, v_char : Int8) : Void
  fun value_set_double = g_value_set_double(this : Value*, v_double : Float64) : Void
  fun value_set_enum = g_value_set_enum(this : Value*, v_enum : Int32) : Void
  fun value_set_flags = g_value_set_flags(this : Value*, v_flags : UInt32) : Void
  fun value_set_float = g_value_set_float(this : Value*, v_float : Float32) : Void
  fun value_set_gtype = g_value_set_gtype(this : Value*, v_gtype : UInt64) : Void
  fun value_set_instance = g_value_set_instance(this : Value*, instance : Void*) : Void
  fun value_set_int = g_value_set_int(this : Value*, v_int : Int32) : Void
  fun value_set_int64 = g_value_set_int64(this : Value*, v_int64 : Int64) : Void
  fun value_set_long = g_value_set_long(this : Value*, v_long : Int64) : Void
  fun value_set_object = g_value_set_object(this : Value*, v_object : LibGObject::Object*) : Void
  fun value_set_param = g_value_set_param(this : Value*, param : LibGObject::ParamSpec*) : Void
  fun value_set_pointer = g_value_set_pointer(this : Value*, v_pointer : Void*) : Void
  fun value_set_schar = g_value_set_schar(this : Value*, v_char : Int8) : Void
  fun value_set_static_boxed = g_value_set_static_boxed(this : Value*, v_boxed : Void*) : Void
  fun value_set_static_string = g_value_set_static_string(this : Value*, v_string : UInt8*) : Void
  fun value_set_string = g_value_set_string(this : Value*, v_string : UInt8*) : Void
  fun value_set_string_take_ownership = g_value_set_string_take_ownership(this : Value*, v_string : UInt8*) : Void
  fun value_set_uchar = g_value_set_uchar(this : Value*, v_uchar : UInt8) : Void
  fun value_set_uint = g_value_set_uint(this : Value*, v_uint : UInt32) : Void
  fun value_set_uint64 = g_value_set_uint64(this : Value*, v_uint64 : UInt64) : Void
  fun value_set_ulong = g_value_set_ulong(this : Value*, v_ulong : UInt64) : Void
  fun value_set_variant = g_value_set_variant(this : Value*, variant : LibGLib::Variant*) : Void
  fun value_take_boxed = g_value_take_boxed(this : Value*, v_boxed : Void*) : Void
  fun value_take_string = g_value_take_string(this : Value*, v_string : UInt8*) : Void
  fun value_take_variant = g_value_take_variant(this : Value*, variant : LibGLib::Variant*) : Void
  fun value_transform = g_value_transform(this : Value*, dest_value : LibGObject::Value*) : Bool
  fun value_unset = g_value_unset(this : Value*) : Void
  fun value_type_compatible = g_value_type_compatible(src_type : UInt64, dest_type : UInt64) : Bool
  fun value_type_transformable = g_value_type_transformable(src_type : UInt64, dest_type : UInt64) : Bool

  struct ValueArray # struct
    n_values : UInt32
    values : LibGObject::Value*
    n_prealloced : UInt32
  end
  fun value_array_new = g_value_array_new(n_prealloced : UInt32) : LibGObject::ValueArray*
  fun value_array_append = g_value_array_append(this : ValueArray*, value : LibGObject::Value*) : LibGObject::ValueArray*
  fun value_array_copy = g_value_array_copy(this : ValueArray*) : LibGObject::ValueArray*
  fun value_array_get_nth = g_value_array_get_nth(this : ValueArray*, index : UInt32) : LibGObject::Value*
  fun value_array_insert = g_value_array_insert(this : ValueArray*, index : UInt32, value : LibGObject::Value*) : LibGObject::ValueArray*
  fun value_array_prepend = g_value_array_prepend(this : ValueArray*, value : LibGObject::Value*) : LibGObject::ValueArray*
  fun value_array_remove = g_value_array_remove(this : ValueArray*, index : UInt32) : LibGObject::ValueArray*
  fun value_array_sort = g_value_array_sort_with_data(this : ValueArray*, compare_func : LibGLib::CompareDataFunc, user_data : Void*) : LibGObject::ValueArray*

  struct WeakRef # struct
    _data : UInt8[0]
  end


  ###########################################
  ##    Constants
  ###########################################

  PARAM_MASK = 255 # : Int32
  PARAM_STATIC_STRINGS = 224 # : Int32
  PARAM_USER_SHIFT = 8 # : Int32
  SIGNAL_FLAGS_MASK = 511 # : Int32
  SIGNAL_MATCH_MASK = 63 # : Int32
  TYPE_FLAG_RESERVED_ID_BIT = 1_u64 # : UInt64
  TYPE_FUNDAMENTAL_MAX = 255 # : Int32
  TYPE_FUNDAMENTAL_SHIFT = 2 # : Int32
  TYPE_RESERVED_BSE_FIRST = 32 # : Int32
  TYPE_RESERVED_BSE_LAST = 48 # : Int32
  TYPE_RESERVED_GLIB_FIRST = 22 # : Int32
  TYPE_RESERVED_GLIB_LAST = 31 # : Int32
  TYPE_RESERVED_USER_FIRST = 49 # : Int32
  VALUE_COLLECT_FORMAT_MAX_LENGTH = 8 # : Int32
  VALUE_NOCOPY_CONTENTS = 134217728 # : Int32

  ###########################################
  ##    Unions
  ###########################################

  union TypeCValue
    v_int : Int32
    v_long : Int64
    v_int64 : Int64
    v_double : Float64
    v_pointer : Void*
  end

  union G_Value__data__union
    v_int : Int32
    v_uint : UInt32
    v_long : Int64
    v_ulong : UInt64
    v_int64 : Int64
    v_uint64 : UInt64
    v_float : Float32
    v_double : Float64
    v_pointer : Void*
  end


  ###########################################
  ##    Interfaces
  ###########################################

  struct TypePlugin # interface
    _data : UInt8[0]
  end
  fun type_plugin_complete_interface_info = g_type_plugin_complete_interface_info(this : TypePlugin*, instance_type : UInt64, interface_type : UInt64, info : LibGObject::InterfaceInfo*) : Void
  fun type_plugin_complete_type_info = g_type_plugin_complete_type_info(this : TypePlugin*, g_type : UInt64, info : LibGObject::TypeInfo*, value_table : LibGObject::TypeValueTable*) : Void
  fun type_plugin_unuse = g_type_plugin_unuse(this : TypePlugin*) : Void
  fun type_plugin_use = g_type_plugin_use(this : TypePlugin*) : Void


  ###########################################
  ##    Functions
  ###########################################

  fun boxed_copy = g_boxed_copy(boxed_type : UInt64, src_boxed : Void*) : Void*
  fun boxed_free = g_boxed_free(boxed_type : UInt64, boxed : Void*) : Void
  fun cclosure_marshal_BOOLEAN__BOXED_BOXED = g_cclosure_marshal_BOOLEAN__BOXED_BOXED(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_BOOLEAN__FLAGS = g_cclosure_marshal_BOOLEAN__FLAGS(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_STRING__OBJECT_POINTER = g_cclosure_marshal_STRING__OBJECT_POINTER(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__BOOLEAN = g_cclosure_marshal_VOID__BOOLEAN(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__BOXED = g_cclosure_marshal_VOID__BOXED(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__CHAR = g_cclosure_marshal_VOID__CHAR(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__DOUBLE = g_cclosure_marshal_VOID__DOUBLE(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__ENUM = g_cclosure_marshal_VOID__ENUM(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__FLAGS = g_cclosure_marshal_VOID__FLAGS(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__FLOAT = g_cclosure_marshal_VOID__FLOAT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__INT = g_cclosure_marshal_VOID__INT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__LONG = g_cclosure_marshal_VOID__LONG(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__OBJECT = g_cclosure_marshal_VOID__OBJECT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__PARAM = g_cclosure_marshal_VOID__PARAM(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__POINTER = g_cclosure_marshal_VOID__POINTER(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__STRING = g_cclosure_marshal_VOID__STRING(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__UCHAR = g_cclosure_marshal_VOID__UCHAR(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__UINT = g_cclosure_marshal_VOID__UINT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__UINT_POINTER = g_cclosure_marshal_VOID__UINT_POINTER(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__ULONG = g_cclosure_marshal_VOID__ULONG(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__VARIANT = g_cclosure_marshal_VOID__VARIANT(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_VOID__VOID = g_cclosure_marshal_VOID__VOID(closure : LibGObject::Closure*, return_value : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun cclosure_marshal_generic = g_cclosure_marshal_generic(closure : LibGObject::Closure*, return_gvalue : LibGObject::Value*, n_param_values : UInt32, param_values : LibGObject::Value*, invocation_hint : Void*, marshal_data : Void*) : Void
  fun enum_complete_type_info = g_enum_complete_type_info(g_enum_type : UInt64, info : LibGObject::TypeInfo*, const_values : LibGObject::EnumValue*) : Void
  fun enum_get_value = g_enum_get_value(enum_class : LibGObject::EnumClass*, value : Int32) : LibGObject::EnumValue*
  fun enum_get_value_by_name = g_enum_get_value_by_name(enum_class : LibGObject::EnumClass*, name : UInt8*) : LibGObject::EnumValue*
  fun enum_get_value_by_nick = g_enum_get_value_by_nick(enum_class : LibGObject::EnumClass*, nick : UInt8*) : LibGObject::EnumValue*
  fun enum_register_static = g_enum_register_static(name : UInt8*, const_static_values : LibGObject::EnumValue*) : UInt64
  fun enum_to_string = g_enum_to_string(g_enum_type : UInt64, value : Int32) : UInt8*
  fun flags_complete_type_info = g_flags_complete_type_info(g_flags_type : UInt64, info : LibGObject::TypeInfo*, const_values : LibGObject::FlagsValue*) : Void
  fun flags_get_first_value = g_flags_get_first_value(flags_class : LibGObject::FlagsClass*, value : UInt32) : LibGObject::FlagsValue*
  fun flags_get_value_by_name = g_flags_get_value_by_name(flags_class : LibGObject::FlagsClass*, name : UInt8*) : LibGObject::FlagsValue*
  fun flags_get_value_by_nick = g_flags_get_value_by_nick(flags_class : LibGObject::FlagsClass*, nick : UInt8*) : LibGObject::FlagsValue*
  fun flags_register_static = g_flags_register_static(name : UInt8*, const_static_values : LibGObject::FlagsValue*) : UInt64
  fun flags_to_string = g_flags_to_string(flags_type : UInt64, value : UInt32) : UInt8*
  fun gtype_get_type = g_gtype_get_type() : UInt64
  fun param_spec_boolean = g_param_spec_boolean(name : UInt8*, nick : UInt8*, blurb : UInt8*, default_value : Bool, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_boxed = g_param_spec_boxed(name : UInt8*, nick : UInt8*, blurb : UInt8*, boxed_type : UInt64, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_char = g_param_spec_char(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : Int8, maximum : Int8, default_value : Int8, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_double = g_param_spec_double(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : Float64, maximum : Float64, default_value : Float64, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_enum = g_param_spec_enum(name : UInt8*, nick : UInt8*, blurb : UInt8*, enum_type : UInt64, default_value : Int32, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_flags = g_param_spec_flags(name : UInt8*, nick : UInt8*, blurb : UInt8*, flags_type : UInt64, default_value : UInt32, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_float = g_param_spec_float(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : Float32, maximum : Float32, default_value : Float32, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_gtype = g_param_spec_gtype(name : UInt8*, nick : UInt8*, blurb : UInt8*, is_a_type : UInt64, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_int = g_param_spec_int(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : Int32, maximum : Int32, default_value : Int32, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_int64 = g_param_spec_int64(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : Int64, maximum : Int64, default_value : Int64, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_long = g_param_spec_long(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : Int64, maximum : Int64, default_value : Int64, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_object = g_param_spec_object(name : UInt8*, nick : UInt8*, blurb : UInt8*, object_type : UInt64, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_param = g_param_spec_param(name : UInt8*, nick : UInt8*, blurb : UInt8*, param_type : UInt64, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_pointer = g_param_spec_pointer(name : UInt8*, nick : UInt8*, blurb : UInt8*, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_pool_new = g_param_spec_pool_new(type_prefixing : Bool) : LibGObject::ParamSpecPool*
  fun param_spec_string = g_param_spec_string(name : UInt8*, nick : UInt8*, blurb : UInt8*, default_value : UInt8*, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_uchar = g_param_spec_uchar(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : UInt8, maximum : UInt8, default_value : UInt8, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_uint = g_param_spec_uint(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : UInt32, maximum : UInt32, default_value : UInt32, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_uint64 = g_param_spec_uint64(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : UInt64, maximum : UInt64, default_value : UInt64, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_ulong = g_param_spec_ulong(name : UInt8*, nick : UInt8*, blurb : UInt8*, minimum : UInt64, maximum : UInt64, default_value : UInt64, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_unichar = g_param_spec_unichar(name : UInt8*, nick : UInt8*, blurb : UInt8*, default_value : UInt8, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_spec_variant = g_param_spec_variant(name : UInt8*, nick : UInt8*, blurb : UInt8*, type : LibGLib::VariantType*, default_value : LibGLib::Variant*, flags : LibGObject::ParamFlags) : LibGObject::ParamSpec*
  fun param_type_register_static = g_param_type_register_static(name : UInt8*, pspec_info : LibGObject::ParamSpecTypeInfo*) : UInt64
  fun param_value_convert = g_param_value_convert(pspec : LibGObject::ParamSpec*, src_value : LibGObject::Value*, dest_value : LibGObject::Value*, strict_validation : Bool) : Bool
  fun param_value_defaults = g_param_value_defaults(pspec : LibGObject::ParamSpec*, value : LibGObject::Value*) : Bool
  fun param_value_set_default = g_param_value_set_default(pspec : LibGObject::ParamSpec*, value : LibGObject::Value*) : Void
  fun param_value_validate = g_param_value_validate(pspec : LibGObject::ParamSpec*, value : LibGObject::Value*) : Bool
  fun param_values_cmp = g_param_values_cmp(pspec : LibGObject::ParamSpec*, value1 : LibGObject::Value*, value2 : LibGObject::Value*) : Int32
  fun pointer_type_register_static = g_pointer_type_register_static(name : UInt8*) : UInt64
  fun signal_accumulator_first_wins = g_signal_accumulator_first_wins(ihint : LibGObject::SignalInvocationHint*, return_accu : LibGObject::Value*, handler_return : LibGObject::Value*, dummy : Void*) : Bool
  fun signal_accumulator_true_handled = g_signal_accumulator_true_handled(ihint : LibGObject::SignalInvocationHint*, return_accu : LibGObject::Value*, handler_return : LibGObject::Value*, dummy : Void*) : Bool
  fun signal_add_emission_hook = g_signal_add_emission_hook(signal_id : UInt32, detail : UInt32, hook_func : LibGObject::SignalEmissionHook, hook_data : Void*, data_destroy : LibGLib::DestroyNotify) : UInt64
  fun signal_chain_from_overridden = g_signal_chain_from_overridden(instance_and_params : LibGObject::Value*, return_value : LibGObject::Value*) : Void
  fun signal_connect_closure = g_signal_connect_closure(instance : LibGObject::Object*, detailed_signal : UInt8*, closure : LibGObject::Closure*, after : Bool) : UInt64
  fun signal_connect_closure_by_id = g_signal_connect_closure_by_id(instance : LibGObject::Object*, signal_id : UInt32, detail : UInt32, closure : LibGObject::Closure*, after : Bool) : UInt64
  fun signal_emitv = g_signal_emitv(instance_and_params : LibGObject::Value*, signal_id : UInt32, detail : UInt32, return_value : LibGObject::Value*) : Void
  fun signal_get_invocation_hint = g_signal_get_invocation_hint(instance : LibGObject::Object*) : LibGObject::SignalInvocationHint*
  fun signal_handler_block = g_signal_handler_block(instance : LibGObject::Object*, handler_id : UInt64) : Void
  fun signal_handler_disconnect = g_signal_handler_disconnect(instance : LibGObject::Object*, handler_id : UInt64) : Void
  fun signal_handler_find = g_signal_handler_find(instance : LibGObject::Object*, mask : LibGObject::SignalMatchType, signal_id : UInt32, detail : UInt32, closure : LibGObject::Closure*, func : Void*, data : Void*) : UInt64
  fun signal_handler_is_connected = g_signal_handler_is_connected(instance : LibGObject::Object*, handler_id : UInt64) : Bool
  fun signal_handler_unblock = g_signal_handler_unblock(instance : LibGObject::Object*, handler_id : UInt64) : Void
  fun signal_handlers_block_matched = g_signal_handlers_block_matched(instance : LibGObject::Object*, mask : LibGObject::SignalMatchType, signal_id : UInt32, detail : UInt32, closure : LibGObject::Closure*, func : Void*, data : Void*) : UInt32
  fun signal_handlers_destroy = g_signal_handlers_destroy(instance : LibGObject::Object*) : Void
  fun signal_handlers_disconnect_matched = g_signal_handlers_disconnect_matched(instance : LibGObject::Object*, mask : LibGObject::SignalMatchType, signal_id : UInt32, detail : UInt32, closure : LibGObject::Closure*, func : Void*, data : Void*) : UInt32
  fun signal_handlers_unblock_matched = g_signal_handlers_unblock_matched(instance : LibGObject::Object*, mask : LibGObject::SignalMatchType, signal_id : UInt32, detail : UInt32, closure : LibGObject::Closure*, func : Void*, data : Void*) : UInt32
  fun signal_has_handler_pending = g_signal_has_handler_pending(instance : LibGObject::Object*, signal_id : UInt32, detail : UInt32, may_be_blocked : Bool) : Bool
  fun signal_list_ids = g_signal_list_ids(itype : UInt64, n_ids : UInt32*) : UInt32*
  fun signal_lookup = g_signal_lookup(name : UInt8*, itype : UInt64) : UInt32
  fun signal_name = g_signal_name(signal_id : UInt32) : UInt8*
  fun signal_override_class_closure = g_signal_override_class_closure(signal_id : UInt32, instance_type : UInt64, class_closure : LibGObject::Closure*) : Void
  fun signal_parse_name = g_signal_parse_name(detailed_signal : UInt8*, itype : UInt64, signal_id_p : UInt32*, detail_p : UInt32*, force_detail_quark : Bool) : Bool
  fun signal_query = g_signal_query(signal_id : UInt32, query : LibGObject::SignalQuery*) : Void
  fun signal_remove_emission_hook = g_signal_remove_emission_hook(signal_id : UInt32, hook_id : UInt64) : Void
  fun signal_set_va_marshaller = g_signal_set_va_marshaller(signal_id : UInt32, instance_type : UInt64, va_marshaller : Void*) : Void
  fun signal_stop_emission = g_signal_stop_emission(instance : LibGObject::Object*, signal_id : UInt32, detail : UInt32) : Void
  fun signal_stop_emission_by_name = g_signal_stop_emission_by_name(instance : LibGObject::Object*, detailed_signal : UInt8*) : Void
  fun signal_type_cclosure_new = g_signal_type_cclosure_new(itype : UInt64, struct_offset : UInt32) : LibGObject::Closure*
  fun source_set_closure = g_source_set_closure(source : LibGLib::Source*, closure : LibGObject::Closure*) : Void
  fun source_set_dummy_callback = g_source_set_dummy_callback(source : LibGLib::Source*) : Void
  fun strdup_value_contents = g_strdup_value_contents(value : LibGObject::Value*) : UInt8*
  fun type_add_class_private = g_type_add_class_private(class_type : UInt64, private_size : UInt64) : Void
  fun type_add_instance_private = g_type_add_instance_private(class_type : UInt64, private_size : UInt64) : Int32
  fun type_add_interface_dynamic = g_type_add_interface_dynamic(instance_type : UInt64, interface_type : UInt64, plugin : LibGObject::TypePlugin*) : Void
  fun type_add_interface_static = g_type_add_interface_static(instance_type : UInt64, interface_type : UInt64, info : LibGObject::InterfaceInfo*) : Void
  fun type_check_class_is_a = g_type_check_class_is_a(g_class : LibGObject::TypeClass*, is_a_type : UInt64) : Bool
  fun type_check_instance = g_type_check_instance(instance : LibGObject::TypeInstance*) : Bool
  fun type_check_instance_is_a = g_type_check_instance_is_a(instance : LibGObject::TypeInstance*, iface_type : UInt64) : Bool
  fun type_check_instance_is_fundamentally_a = g_type_check_instance_is_fundamentally_a(instance : LibGObject::TypeInstance*, fundamental_type : UInt64) : Bool
  fun type_check_is_value_type = g_type_check_is_value_type(type : UInt64) : Bool
  fun type_check_value = g_type_check_value(value : LibGObject::Value*) : Bool
  fun type_check_value_holds = g_type_check_value_holds(value : LibGObject::Value*, type : UInt64) : Bool
  fun type_children = g_type_children(type : UInt64, n_children : UInt32*) : UInt64*
  fun type_class_adjust_private_offset = g_type_class_adjust_private_offset(g_class : Void*, private_size_or_offset : Int32*) : Void
  fun type_class_peek = g_type_class_peek(type : UInt64) : LibGObject::TypeClass*
  fun type_class_peek_static = g_type_class_peek_static(type : UInt64) : LibGObject::TypeClass*
  fun type_class_ref = g_type_class_ref(type : UInt64) : LibGObject::TypeClass*
  fun type_default_interface_peek = g_type_default_interface_peek(g_type : UInt64) : LibGObject::TypeInterface*
  fun type_default_interface_ref = g_type_default_interface_ref(g_type : UInt64) : LibGObject::TypeInterface*
  fun type_default_interface_unref = g_type_default_interface_unref(g_iface : LibGObject::TypeInterface*) : Void
  fun type_depth = g_type_depth(type : UInt64) : UInt32
  fun type_ensure = g_type_ensure(type : UInt64) : Void
  fun type_free_instance = g_type_free_instance(instance : LibGObject::TypeInstance*) : Void
  fun type_from_name = g_type_from_name(name : UInt8*) : UInt64
  fun type_fundamental = g_type_fundamental(type_id : UInt64) : UInt64
  fun type_fundamental_next = g_type_fundamental_next() : UInt64
  fun type_get_instance_count = g_type_get_instance_count(type : UInt64) : Int32
  fun type_get_plugin = g_type_get_plugin(type : UInt64) : LibGObject::TypePlugin*
  fun type_get_qdata = g_type_get_qdata(type : UInt64, quark : UInt32) : Void*
  fun type_get_type_registration_serial = g_type_get_type_registration_serial() : UInt32
  fun type_init = g_type_init() : Void
  fun type_init_with_debug_flags = g_type_init_with_debug_flags(debug_flags : LibGObject::TypeDebugFlags) : Void
  fun type_interface_add_prerequisite = g_type_interface_add_prerequisite(interface_type : UInt64, prerequisite_type : UInt64) : Void
  fun type_interface_get_plugin = g_type_interface_get_plugin(instance_type : UInt64, interface_type : UInt64) : LibGObject::TypePlugin*
  fun type_interface_peek = g_type_interface_peek(instance_class : LibGObject::TypeClass*, iface_type : UInt64) : LibGObject::TypeInterface*
  fun type_interface_prerequisites = g_type_interface_prerequisites(interface_type : UInt64, n_prerequisites : UInt32*) : UInt64*
  fun type_interfaces = g_type_interfaces(type : UInt64, n_interfaces : UInt32*) : UInt64*
  fun type_is_a = g_type_is_a(type : UInt64, is_a_type : UInt64) : Bool
  fun type_name = g_type_name(type : UInt64) : UInt8*
  fun type_name_from_class = g_type_name_from_class(g_class : LibGObject::TypeClass*) : UInt8*
  fun type_name_from_instance = g_type_name_from_instance(instance : LibGObject::TypeInstance*) : UInt8*
  fun type_next_base = g_type_next_base(leaf_type : UInt64, root_type : UInt64) : UInt64
  fun type_parent = g_type_parent(type : UInt64) : UInt64
  fun type_qname = g_type_qname(type : UInt64) : UInt32
  fun type_query = g_type_query(type : UInt64, query : LibGObject::TypeQuery*) : Void
  fun type_register_dynamic = g_type_register_dynamic(parent_type : UInt64, type_name : UInt8*, plugin : LibGObject::TypePlugin*, flags : LibGObject::TypeFlags) : UInt64
  fun type_register_fundamental = g_type_register_fundamental(type_id : UInt64, type_name : UInt8*, info : LibGObject::TypeInfo*, finfo : LibGObject::TypeFundamentalInfo*, flags : LibGObject::TypeFlags) : UInt64
  fun type_register_static = g_type_register_static(parent_type : UInt64, type_name : UInt8*, info : LibGObject::TypeInfo*, flags : LibGObject::TypeFlags) : UInt64
  fun type_set_qdata = g_type_set_qdata(type : UInt64, quark : UInt32, data : Void*) : Void
  fun type_test_flags = g_type_test_flags(type : UInt64, flags : UInt32) : Bool
  fun value_type_compatible = g_value_type_compatible(src_type : UInt64, dest_type : UInt64) : Bool
  fun value_type_transformable = g_value_type_transformable(src_type : UInt64, dest_type : UInt64) : Bool

  ###########################################
  ##    Callbacks
  ###########################################

 alias BaseFinalizeFunc = LibGObject::TypeClass* -> Void
 alias BaseInitFunc = LibGObject::TypeClass* -> Void
 alias BindingTransformFunc = LibGObject::Binding*, LibGObject::Value*, LibGObject::Value*, Void* -> Bool
 alias BoxedCopyFunc = Void* -> Void*
 alias BoxedFreeFunc = Void* -> Void
 alias Callback =  -> Void
 alias ClassFinalizeFunc = LibGObject::TypeClass*, Void* -> Void
 alias ClassInitFunc = LibGObject::TypeClass*, Void* -> Void
 alias ClosureMarshal = LibGObject::Closure*, LibGObject::Value*, UInt32, LibGObject::Value*, Void*, Void* -> Void
 alias ClosureNotify = Void*, LibGObject::Closure* -> Void
 alias InstanceInitFunc = LibGObject::TypeInstance*, LibGObject::TypeClass* -> Void
 alias InterfaceFinalizeFunc = LibGObject::TypeInterface*, Void* -> Void
 alias InterfaceInitFunc = LibGObject::TypeInterface*, Void* -> Void
 alias ObjectFinalizeFunc = LibGObject::Object* -> Void
 alias ObjectGetPropertyFunc = LibGObject::Object*, UInt32, LibGObject::Value*, LibGObject::ParamSpec* -> Void
 alias ObjectSetPropertyFunc = LibGObject::Object*, UInt32, LibGObject::Value*, LibGObject::ParamSpec* -> Void
 alias SignalAccumulator = LibGObject::SignalInvocationHint*, LibGObject::Value*, LibGObject::Value*, Void* -> Bool
 alias SignalEmissionHook = LibGObject::SignalInvocationHint*, UInt32, LibGObject::Value*, Void* -> Bool
 alias ToggleNotify = Void*, LibGObject::Object*, Bool -> Void
 alias TypeClassCacheFunc = Void*, LibGObject::TypeClass* -> Bool
 alias TypeInterfaceCheckFunc = Void*, LibGObject::TypeInterface* -> Void
 alias TypePluginCompleteInterfaceInfo = LibGObject::TypePlugin*, UInt64, UInt64, LibGObject::InterfaceInfo* -> Void
 alias TypePluginCompleteTypeInfo = LibGObject::TypePlugin*, UInt64, LibGObject::TypeInfo*, LibGObject::TypeValueTable* -> Void
 alias TypePluginUnuse = LibGObject::TypePlugin* -> Void
 alias TypePluginUse = LibGObject::TypePlugin* -> Void
 alias ValueTransform = LibGObject::Value*, LibGObject::Value* -> Void
 alias WeakNotify = Void*, LibGObject::Object* -> Void
end

