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

  struct GError
    domain : GQuark
    code : GInt
    message : GChar*
  end
end

@[Link("gobject-introspection-1.0")]
lib LibGObjectIntrospection
  alias GIRepository = Void*
  alias GITypeLib = Void*
  alias GIBaseInfo = Void*
  alias GIArgInfo = Void*
  alias GICallableInfo = Void*
  alias GIFunctionInfo = Void*
  alias GIEnumInfo = Void*
  alias GIUnionInfo = Void*
  alias GIStructInfo = Void*
  alias GIValueInfo = Void*
  alias GITypeInfo = Void*
  alias GIFieldInfo = Void*
  alias GIObjectInfo = Void*
  alias GIConstantInfo = Void*
  alias GIInterfaceInfo = Void*
  alias GIPropertyInfo = Void*
  alias GISignalInfo = Void*
  alias GIVFuncInfo = Void*


  enum GIRepositoryLoadFlags
    NONE = 0
    LAZY
  end

  enum GIInfoType
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

  enum GIDirection
    IN = 0
    OUT = 1
    INOUT = 2
    def hash; value.hash; end
  end

  enum GITypeTag
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

  enum GIArrayType
    C = 0
    ARRAY = 1
    PTR_ARRAY = 2
    BYTE_ARRAY = 3
  end

  union GIArgument
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

  struct GIAttributeIter
    data : Void*
    data2 : Void*
    data3 : Void*
    data4 : Void*
  end

  fun get_default = g_irepository_get_default() : GIRepository
  fun get_loaded_namespaces = g_irepository_get_loaded_namespaces(repository : GIRepository) : LibGLib::GChar**
  fun require = g_irepository_require(repository : GIRepository, namespace : LibGLib::GChar*, version : LibGLib::GChar*, flags : GIRepositoryLoadFlags, error : LibGLib::GError**) : GITypeLib
  fun get_dependencies = g_irepository_get_dependencies(repository : GIRepository, namespace : LibGLib::GChar*) : LibGLib::GChar**
  fun get_c_prefix = g_irepository_get_c_prefix(repository : GIRepository, namespace : LibGLib::GChar*) : LibGLib::GChar*
  fun get_version = g_irepository_get_version(repository : GIRepository, namespace : LibGLib::GChar*) : LibGLib::GChar*
  fun get_typelib_path = g_irepository_get_typelib_path(repository : GIRepository, namespace : LibGLib::GChar*) : LibGLib::GChar*
  fun get_shared_library = g_irepository_get_shared_library(repository : GIRepository, namespace : LibGLib::GChar*) : LibGLib::GChar*
  fun get_n_infos = g_irepository_get_n_infos(repository : GIRepository, namespace : LibGLib::GChar*) : LibGLib::GInt
  fun get_info = g_irepository_get_info(repository : GIRepository, namespace : LibGLib::GChar*, index : LibGLib::GInt) : GIBaseInfo

  fun base_info_ref = g_base_info_ref(info : GIBaseInfo)
  fun base_info_unref = g_base_info_unref(info : GIBaseInfo)
  fun base_info_get_type = g_base_info_get_type(info : GIBaseInfo) : GIInfoType
  fun base_info_get_name = g_base_info_get_name(info : GIBaseInfo) : LibGLib::GChar*
  fun base_info_get_namespace = g_base_info_get_namespace(info : GIBaseInfo) : LibGLib::GChar*
  fun base_info_get_container = g_base_info_get_container(info : GIBaseInfo) : GIBaseInfo
  fun base_info_iterate_attributes = g_base_info_iterate_attributes(this : GIBaseInfo, iterator : GIAttributeIter*, name : UInt8**, value : UInt8**) : LibGLib::GBool

  fun enum_info_get_n_values = g_enum_info_get_n_values(info : GIEnumInfo) : LibGLib::GInt
  fun enum_info_get_value = g_enum_info_get_value(info : GIEnumInfo, index : LibGLib::GInt) : GIValueInfo
  fun enum_info_get_n_methods = g_enum_info_get_n_methods(info : GIEnumInfo) : LibGLib::GInt
  fun enum_info_get_method = g_enum_info_get_method(info : GIEnumInfo, index : LibGLib::GInt) : GIFunctionInfo

  fun value_info_get_value = g_value_info_get_value(info : GIValueInfo) : LibGLib::GInt64

  fun union_info_get_n_fields = g_union_info_get_n_fields(info : GIUnionInfo) : LibGLib::GInt
  fun union_info_get_field = g_union_info_get_field(info : GIUnionInfo, index : LibGLib::GInt) : GIFieldInfo
  fun union_info_get_n_methods = g_union_info_get_n_methods(info : GIUnionInfo) : LibGLib::GInt
  fun union_info_get_method = g_union_info_get_method(info : GIUnionInfo, index : LibGLib::GInt) : GIFunctionInfo

  fun struct_info_is_gtype_struct = g_struct_info_is_gtype_struct(info : GIStructInfo) : LibGLib::GBool
  fun struct_info_get_n_fields = g_struct_info_get_n_fields(info : GIStructInfo) : LibGLib::GInt
  fun struct_info_get_field = g_struct_info_get_field(info : GIStructInfo, index : LibGLib::GInt) : GIFieldInfo
  fun struct_info_get_n_methods = g_struct_info_get_n_methods(info : GIStructInfo) : LibGLib::GInt
  fun struct_info_get_method = g_struct_info_get_method(info : GIStructInfo, index : LibGLib::GInt) : GIFunctionInfo

  fun object_info_get_n_interfaces = g_object_info_get_n_interfaces(info : GIObjectInfo) : LibGLib::GInt
  fun object_info_get_interface = g_object_info_get_interface(info : GIObjectInfo, index : LibGLib::GInt) : GIInterfaceInfo
  fun object_info_get_n_constants = g_object_info_get_n_constants(info : GIObjectInfo) : LibGLib::GInt
  fun object_info_get_constant = g_object_info_get_constant(info : GIObjectInfo, index : LibGLib::GInt) : GIConstantInfo
  fun object_info_get_n_fields = g_object_info_get_n_fields(info : GIObjectInfo) : LibGLib::GInt
  fun object_info_get_field = g_object_info_get_field(info : GIObjectInfo, index : LibGLib::GInt) : GIFieldInfo
  fun object_info_get_n_properties = g_object_info_get_n_properties(info : GIObjectInfo) : LibGLib::GInt
  fun object_info_get_property = g_object_info_get_property(info : GIObjectInfo, index : LibGLib::GInt) : GIPropertyInfo
  fun object_info_get_n_methods = g_object_info_get_n_methods(info : GIObjectInfo) : LibGLib::GInt
  fun object_info_get_method = g_object_info_get_method(info : GIObjectInfo, index : LibGLib::GInt) : GIFunctionInfo
  fun object_info_get_n_signals = g_object_info_get_n_signals(info : GIObjectInfo) : LibGLib::GInt
  fun object_info_get_signal = g_object_info_get_signal(info : GIObjectInfo, index : LibGLib::GInt) : GISignalInfo
  fun object_info_get_n_vfuncs = g_object_info_get_n_vfuncs(info : GIObjectInfo) : LibGLib::GInt
  fun object_info_get_vfunc = g_object_info_get_vfunc(info : GIObjectInfo, index : LibGLib::GInt) : GIVFuncInfo

  fun interface_info_get_n_constants = g_interface_info_get_n_constants(info : GIInterfaceInfo) : LibGLib::GInt
  fun interface_info_get_constant = g_interface_info_get_constant(info : GIInterfaceInfo, index : LibGLib::GInt) : GIConstantInfo
  fun interface_info_get_n_prerequisites = g_interface_info_get_n_prerequisites(info : GIInterfaceInfo) : LibGLib::GInt
  fun interface_info_get_prerequisite = g_interface_info_get_prerequisite(info : GIInterfaceInfo, index : LibGLib::GInt) : GIBaseInfo
  fun interface_info_get_n_properties = g_interface_info_get_n_properties(info : GIInterfaceInfo) : LibGLib::GInt
  fun interface_info_get_property = g_interface_info_get_property(info : GIInterfaceInfo, index : LibGLib::GInt) : GIPropertyInfo
  fun interface_info_get_n_signals = g_interface_info_get_n_signals(info : GIInterfaceInfo) : LibGLib::GInt
  fun interface_info_get_signal = g_interface_info_get_signal(info : GIInterfaceInfo, index : LibGLib::GInt) : GISignalInfo
  fun interface_info_get_n_methods = g_interface_info_get_n_methods(info : GIInterfaceInfo) : LibGLib::GInt
  fun interface_info_get_method = g_interface_info_get_method(info : GIInterfaceInfo, index : LibGLib::GInt) : GIFunctionInfo
  fun interface_info_get_n_vfuncs = g_interface_info_get_n_vfuncs(info : GIInterfaceInfo) : LibGLib::GInt
  fun interface_info_get_vfunc = g_interface_info_get_vfunc(info : GIInterfaceInfo, index : LibGLib::GInt) : GIVFuncInfo
  fun interface_info_get_iface_struct = g_interface_info_get_iface_struct(info : GIInterfaceInfo) : GIStructInfo

  fun field_info_get_type = g_field_info_get_type(info : GIFieldInfo) : GITypeInfo

  fun arg_info_get_direction = g_arg_info_get_direction(info : GIArgInfo) : GIDirection
  fun arg_info_get_type = g_arg_info_get_type(info : GIArgInfo) : GITypeInfo

  # fun type_info_get_array_fixed_size = g_type_info_get_array_fixed_size(info : GITypeInfo)
  # fun type_info_get_array_length = g_type_info_get_array_length(info : GITypeInfo)
  fun type_info_get_array_type = g_type_info_get_array_type(info : GITypeInfo) : GIArrayType
  fun type_info_get_interface = g_type_info_get_interface(info : GITypeInfo) : GIBaseInfo
  fun type_info_get_param_type = g_type_info_get_param_type(info : GITypeInfo, n : LibGLib::GInt) : GITypeInfo
  fun type_info_get_tag = g_type_info_get_tag(info : GITypeInfo) : GITypeTag
  fun type_info_is_pointer = g_type_info_is_pointer(info : GITypeInfo) : LibGLib::GBool
  # fun type_info_is_zero_terminated = g_type_info_is_zero_terminated(info : GITypeInfo)
  fun type_info_to_string = g_info_type_to_string(info : GITypeInfo) : LibGLib::GChar*

  fun callable_info_get_n_args = g_callable_info_get_n_args(info : GICallableInfo) : LibGLib::GInt
  fun callable_info_get_arg = g_callable_info_get_arg(info : GICallableInfo, index : LibGLib::GInt) : GIArgInfo
  fun callable_info_get_return_type = g_callable_info_get_return_type(info : GICallableInfo) : GITypeInfo
  fun callable_info_is_method = g_callable_info_is_method(info : GICallableInfo) : LibGLib::GBool

  fun function_info_get_symbol = g_function_info_get_symbol(info : GIFunctionInfo) : LibGLib::GChar*

  fun constant_info_get_value = g_constant_info_get_value(info : GIConstantInfo, argument : GIArgument*) : LibGLib::GInt
  fun constant_info_free_value = g_constant_info_free_value(info : GIConstantInfo, argument : GIArgument*)
  fun constant_info_get_type = g_constant_info_get_type(info : GIConstantInfo) : GITypeInfo

  fun property_info_get_type = g_property_info_get_type(info : GIPropertyInfo) : GITypeInfo
end

class PointerIterator(T, V)
  include Enumerable(V)

  def self.string_array array : UInt8**
    new(array) {|string| String.new(string) }.to_a
  end

  def initialize @array : T*, &@converter : T -> V
  end

  def each
    return unless @array
    i = 0
    loop do
      value = @array[i]
      break unless value
      yield @converter.call(value)
      i += 1
    end
  end
end

class GError < Exception
  def initialize gerror : LibGLib::GError*
    super String.new(gerror.value.message)
  end
end

macro each_converted(prefix, basename, type, plural=nil)
  def each_{{basename.id}}
    n = LibGObjectIntrospection.{{prefix.id}}_get_n_{{plural ? plural.id : "#{basename}s".id}}(self)
    0.upto(n-1) do |index|
      yield {{type.id}}.new LibGObjectIntrospection.{{prefix.id}}_get_{{basename.id}}(self, index)
    end
  end
end

class GIBaseInfo

  INFO_TYPES = Hash(LibGObjectIntrospection::GIInfoType, GIBaseInfo.class).new

  macro inherited
    INFO_TYPES[LibGObjectIntrospection::GIInfoType::{{@type.name[2..-5].upcase.id}}] = {{@type}}
  end

  def self.all namespace
    infos = [] of GIBaseInfo
    n = LibGObjectIntrospection.get_n_infos(GIRepository.instance, namespace)
    Array.new(n) {|index|
      find(namespace, index)
    }
  end

  def self.find namespace, index
    wrap LibGObjectIntrospection.get_info(GIRepository.instance, namespace, index)
  end

  def self.wrap ptr
    info = new ptr
    upper = INFO_TYPES[info.info_type]?
    if upper
      info = upper.new info.to_unsafe
      LibGObjectIntrospection.base_info_ref(info)
    end

    info
  end

  protected def initialize @ptr
  end

  def info_type
    LibGObjectIntrospection.base_info_get_type self
  end

  def name
    String.new LibGObjectIntrospection.base_info_get_name(self)
  end

  def namespace
    String.new LibGObjectIntrospection.base_info_get_namespace(self)
  end

  def container
    ptr = LibGObjectIntrospection.base_info_get_container(self)
    raise "No container for #{self}" unless ptr
    GIBaseInfo.wrap ptr
  end

  def c_prefix
    GIRepository.instance.c_prefix(namespace)
  end

  def attributes
    iter :: LibGObjectIntrospection::GIAttributeIter
    attributes = Hash(String, String).new
    while LibGObjectIntrospection.base_info_iterate_attributes(self, pointerof(iter), out name, out value)
      attributes[String.new(name)] = String.new(value)
    end

    attributes
  end

  def finalize
    LibGObjectIntrospection.base_info_unref(@ptr)
  end

  def to_unsafe
    @ptr
  end

  def definition
    "  # Bug: #{name} : #{info_type}"
  end

  def declaration
  end

  def to_s io
    io << name << '(' << info_type << ')'
  end
end

class GIEnumInfo < GIBaseInfo
  each_converted enum_info, value, GIValueInfo
  each_converted enum_info, method, GIFunctionInfo

  def definition
    String.build do |io|
      io.puts "  enum #{name}"
      each_value do |value|
        io.puts "  #{value.definition}"
      end
      io.puts "  end"

      each_method do |method|
        io.puts method.definition
      end

      io.puts
    end
  end
end

class GIFlagsInfo < GIEnumInfo
end

class GIValueInfo < GIBaseInfo
  def value
    LibGObjectIntrospection.value_info_get_value(self)
  end

  def definition
    name = self.name.upcase
    name = "# #{name}"unless 'A' <= name[0] <= 'Z'
    "  #{name} = #{value}"
  end
end

class GITypeInfo < GIBaseInfo
  TAG_MAP = Hash(LibGObjectIntrospection::GITypeTag, String).new # Hash literal bug?
  TAG_MAP[LibGObjectIntrospection::GITypeTag::VOID]      = "Void"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::BOOLEAN]   = "Bool"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::INT8]      = "Int8"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::UINT8]     = "UInt8"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::INT16]     = "Int16"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::UINT16]    = "UInt16"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::INT32]     = "Int32"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::UINT32]    = "UInt32"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::INT64]     = "Int64"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::UINT64]    = "UInt64"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::FLOAT]     = "Float32"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::DOUBLE]    = "Float64"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::GTYPE]     = "UInt64"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::UTF8]      = "UInt8"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::FILENAME]  = "UInt8"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::GLIST]     = "Void*"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::GSLIST]    = "Void*"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::GHASH]     = "Void*"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::ERROR]     = "LibGLib::Error*"
  TAG_MAP[LibGObjectIntrospection::GITypeTag::UNICHAR]   = "UInt8"

  BLACKLIST = {"VaClosureMarshal"}

  def tag
    LibGObjectIntrospection.type_info_get_tag(self)
  end

  def pointer?
    LibGObjectIntrospection.type_info_is_pointer(self)
  end

  def definition
    base = case tag
      when LibGObjectIntrospection::GITypeTag::INTERFACE # Now this is everything but an interface :(
        interface = GIBaseInfo.wrap LibGObjectIntrospection.type_info_get_interface(self)
        case interface
        when GICallbackInfo # Weird stuff, just Void* it for the moment
          "Void*"
        else
          if BLACKLIST.includes? interface.name # More weird stuff
            "Void*"
          else
            namespace = "Lib#{interface.namespace}::"
            namespace = nil if namespace == self.namespace
            "#{namespace}#{interface.name}"
          end
        end
      when LibGObjectIntrospection::GITypeTag::ARRAY
        array = LibGObjectIntrospection.type_info_get_array_type(self)
        case array
        when LibGObjectIntrospection::GIArrayType::C
          type = GIBaseInfo.wrap LibGObjectIntrospection.type_info_get_param_type(self, 0)
          type.is_a?(GITypeInfo) ? type.definition  : raise "Bug: didn't get a TypeInfo"
        else
          "Void*"
        end
      else
        TAG_MAP[tag]
      end
    base += "*" if pointer?
    base
  end
end

class GIArgInfo < GIBaseInfo
  def out?
    LibGObjectIntrospection.arg_info_get_direction(self) == LibGObjectIntrospection::GIDirection::OUT
  end

  def type
    type = GIBaseInfo.wrap LibGObjectIntrospection.arg_info_get_type(self)
    type.is_a?(GITypeInfo) ? type : raise "Bug: didn't get a TypeInfo"
  end

  def definition
    String.build do |io|
      io << name << " : " << type.definition
      io << '*' if out?
    end
  end
end

class SelfArgInfo
  def initialize @container
  end

  def definition
    "this : #{@container.name}*"
  end
end

module GICallableInfo
  def method?
    LibGObjectIntrospection.callable_info_is_method(self)
  end

  each_converted callable_info, arg, GIArgInfo

  def args
    args = [] of GIArgInfo|SelfArgInfo
    args << SelfArgInfo.new(container) if method?
    each_arg do |arg|
      args << arg
    end
    args
  end

  def return_type
    type = GIBaseInfo.wrap LibGObjectIntrospection.callable_info_get_return_type(self)
    type.is_a?(GITypeInfo) ? type : raise "Bug: didn't get a TypeInfo"
  end
end

class GIFunctionInfo < GIBaseInfo
  include GICallableInfo

  def symbol
    String.new LibGObjectIntrospection.function_info_get_symbol(self)
  end

  def prefix
    prefix = container.name
             .gsub(/[A-Z][a-z]*(?=[A-Z])/) {|m| "#{m.downcase}_" }
             .downcase
    "#{prefix}_"
  rescue
    ""
  end

  def definition
    String.build do |io|
      io << "  fun #{prefix}#{name} = #{symbol}("
      io << args.map(&.definition).join(", ")
      io << ") : #{return_type.definition}"
    end
  end
end

class GIUnionInfo < GIBaseInfo
  each_converted union_info, field, GIFieldInfo
  each_converted union_info, method, GIFunctionInfo

  def name
    name = super
    'A' <= name[0] <= 'Z' ? name : "#{c_prefix}#{name}"
  end

  def definition
    String.build do |io|
      io.puts "  union #{name}"
      each_field do |field|
        io.puts "  #{field.definition}"
      end
      io.puts "  end"

      each_method do |method|
        io.puts method.definition
      end

      io.puts
    end
  end

  def declaration
    "  union #{name}; end"
  end
end

class GIFieldInfo < GIBaseInfo
  def type
    type = GIBaseInfo.wrap LibGObjectIntrospection.field_info_get_type(self)
    type.is_a?(GITypeInfo) ? type : raise "Bug: didn't get a TypeInfo"
  end

  def definition
    "  #{name} : #{type.definition}"
  end
end

class GIStructInfo < GIBaseInfo
  each_converted struct_info, field, GIFieldInfo
  each_converted struct_info, method, GIFunctionInfo

  def gtype?
    LibGObjectIntrospection.struct_info_is_gtype_struct(self)
  end

  def name
    name = super
    'A' <= name[0] <= 'Z' ? name : "#{namespace}#{name}"
  end

  def definition
    String.build do |io|
      io.puts "  struct #{name} # struct"
      each_field do |field|
        io.puts "  #{field.definition}"
      end
      io.puts "  end"

      each_method do |method|
        io.puts method.definition
      end

      io.puts
    end
  end

  def declaration
    "  struct #{name}; end; # struct"
  end
end

class GIObjectInfo < GIBaseInfo
  each_converted object_info, constant, GIConstantInfo
  each_converted object_info, field, GIFieldInfo
  each_converted object_info, method, GIFunctionInfo
  each_converted object_info, interface, GIInterfaceInfo
  each_converted object_info, property, GIPropertyInfo, properties
  each_converted object_info, signal, GISignalInfo
  each_converted object_info, vfunc, GIVFuncInfo

  def definition
    String.build do |io|
      io.puts "  struct #{name} # object"

      each_interface do |interface|
        io.puts "  # Implements #{interface.name}"
      end

      each_constant do |constant|
        io.puts "  #{constant.definition}"
      end

      each_field do |field|
        io.puts "  #{field.definition}"
      end

      each_property do |property|
        io.puts "  #{property.definition}"
      end

      each_signal do |signal|
        io.puts "  #{signal.definition}"
      end

      each_vfunc do |vfunc|
        io.puts "  #{vfunc.definition}"
      end

      io.puts "  end"

      each_method do |method|
        io.puts method.definition
      end

      io.puts
    end
  end

  def declaration
    "  struct #{name}; end # object"
  end
end

class GIConstantInfo < GIBaseInfo
  def value
    size = LibGObjectIntrospection.constant_info_get_value(self, out value)
    {size, value}
  end

  def with_value
    size, value = self.value
    yield value
  ensure
    LibGObjectIntrospection.constant_info_free_value(self, pointerof(value))
  end

  def type
    type = GIBaseInfo.wrap LibGObjectIntrospection.constant_info_get_type(self)
    type.is_a?(GITypeInfo) ? type : raise "Bug: didn't get a TypeInfo"
  end

  def literal
    with_value do |value|
      case type.tag
      when LibGObjectIntrospection::GITypeTag::BOOLEAN
        value.v_boolean.inspect
      when LibGObjectIntrospection::GITypeTag::INT8
        value.v_int8.inspect
      when LibGObjectIntrospection::GITypeTag::UINT8
        value.v_uint8.inspect
      when LibGObjectIntrospection::GITypeTag::INT16
        value.v_int16.inspect
      when LibGObjectIntrospection::GITypeTag::UINT16
        value.v_uint16.inspect
      when LibGObjectIntrospection::GITypeTag::INT32
        value.v_int32.inspect
      when LibGObjectIntrospection::GITypeTag::UINT32
        value.v_uint32.inspect
      when LibGObjectIntrospection::GITypeTag::INT64
        value.v_int64.inspect
      when LibGObjectIntrospection::GITypeTag::UINT64
        value.v_uint64.inspect
      when LibGObjectIntrospection::GITypeTag::FLOAT
        value.v_float.inspect
      when LibGObjectIntrospection::GITypeTag::DOUBLE
        value.v_double.inspect
      when LibGObjectIntrospection::GITypeTag::UTF8
        string = String.new(value.v_string)
        string.inspect
      else
        raise "Bug: Unhandled constant type #{type.tag}"
      end
    end
  end

  def definition
    "  #{name} = #{literal} # : #{type.definition}"
  end
end

class GICallbackInfo < GIBaseInfo
  include GICallableInfo

  def definition
    String.build do |io|
      io << "  # Callback: #{name}("
      io << args.map(&.definition).join(", ")
      io << ") : #{return_type.definition}"
    end
  end
end

class GIInterfaceInfo < GIBaseInfo
  each_converted interface_info, constant, GIConstantInfo
  each_converted interface_info, method, GIFunctionInfo
  each_converted interface_info, prerequisite, GIBaseInfo
  each_converted interface_info, property, GIPropertyInfo, properties
  each_converted interface_info, signal, GISignalInfo
  each_converted interface_info, vfunc, GIVFuncInfo

  def iface_struct
    ptr = LibGObjectIntrospection.interface_info_get_iface_struct(self)
    GIStructInfo.new ptr if ptr
  end

  def definition
    String.build do |io|
      io.puts "  struct #{name} # interface"

      iface_struct = self.iface_struct
      if iface_struct
        iface_struct.each_field do |field|
          io.puts "#{field.definition}"
        end
      end

      each_constant do |constant|
        io.puts "  #{constant.definition}"
      end

      each_prerequisite do |prerequisite|
        io.puts "  # Requires #{prerequisite.name}"
      end

      each_property do |property|
        io.puts "  #{property.definition}"
      end

      each_signal do |signal|
        io.puts "  #{signal.definition}"
      end

      each_vfunc do |vfunc|
        io.puts "  #{vfunc.definition}"
      end

      io.puts "  end"

      each_method do |method|
        io.puts method.definition
      end
      io.puts
    end
  end


  def declaration
    "  struct #{name}; end # interface"
  end
end

class GIPropertyInfo < GIBaseInfo
  def type
    type = GIBaseInfo.wrap LibGObjectIntrospection.property_info_get_type(self)
    type.is_a?(GITypeInfo) ? type : raise "Bug: didn't get a TypeInfo"
  end

  def definition
    "  # Property #{name} : #{type.definition}"
  end
end

class GISignalInfo < GIBaseInfo
  def definition
    "  # Signal #{name}"
  end
end

class GIVFuncInfo < GIBaseInfo
  def definition
    " # Virtual function #{name}"
  end
end

class GIRepository
  def self.instance
    @@instance ||= new
  end

  private def initialize
    @repository = LibGObjectIntrospection.get_default
  end

  def require namespace, version=nil
    error = Pointer(LibGLib::GError).null
    LibGObjectIntrospection.require self, namespace, version, LibGObjectIntrospection::GIRepositoryLoadFlags::NONE, pointerof(error)
    raise GError.new(error) if error
  end

  def loaded_namespaces
    namespaces = LibGObjectIntrospection.get_loaded_namespaces self
    PointerIterator.string_array namespaces
  end

  def dependencies namespace
    dependencies = LibGObjectIntrospection.get_dependencies self, namespace
    PointerIterator.string_array(dependencies).map {|dep|
      name, version = dep.split('-')
      {name, version}
    }
  end

  def c_prefix namespace
    String.new(LibGObjectIntrospection.get_c_prefix(self, namespace))
  end

  def version namespace
    String.new(LibGObjectIntrospection.get_version(self, namespace))
  end

  def typelib_path namespace
    String.new(LibGObjectIntrospection.get_typelib_path(self, namespace))
  end

  def shared_library namespace
    String.new(LibGObjectIntrospection.get_shared_library(self, namespace))
  end

  def to_unsafe
    @repository
  end
end

class Namespace
  def initialize @namespace
    self.require
  end

  def_equals_and_hash @namespace

  def require
    GIRepository.instance.require @namespace
  end

  def definition
    String.build do |io|
      definition io
    end
  end

  def definition io
    lib_definition io
  end

  def lib_filename
    "lib_#{@namespace.gsub(/[A-Z][a-z]*(?=[A-Z])/) {|m| "#{m.downcase}_" }.downcase}"
  end

  def lib_filepath
    "#{lib_filename}.cr"
  end

  def write directory
    File.open(File.join(directory, lib_filepath), "w") do |file|
      definition file
    end
  end

  private def lib_definition io
    requires = false
    GIRepository.instance.dependencies(@namespace).each do |dependency|
      namespace, version = dependency
      io.puts %(require "./#{Namespace.new(namespace).lib_filename}")
      requires = true
    end

    io.puts if requires

    libraries = GIRepository.instance.shared_library(@namespace).split(',')

    libraries.each do |library|
      io.puts %(@[Link("#{library}")])
    end

    io.puts "lib Lib#{@namespace}"

    grouped_infos = GIBaseInfo.all(@namespace).group_by(&.info_type)

    # First pass, forward declare structs
    io.puts
    io.puts "  ###########################################"
    io.puts "  ##   Declarations"
    io.puts "  ###########################################"
    io.puts
    grouped_infos.each do |type, infos|
      infos.each do |info|
        case info
        when GIEnumInfo
          next unless 'A' <= info.name[0] <= 'Z' # Bug in typelib?
        when GIStructInfo
          next if info.gtype? # Hide them
        end
        declaration = info.declaration
        io.puts declaration if declaration && !declaration.empty?
      end
    end

    # Second pass, enums, flags & constants
    grouped_infos.each do |type, infos|
      next unless type == LibGObjectIntrospection::GIInfoType::ENUM ||
                  type == LibGObjectIntrospection::GIInfoType::FLAGS ||
                  type == LibGObjectIntrospection::GIInfoType::CONSTANT

      heading = type.to_s.capitalize
      heading += 's' unless heading.ends_with? 's'
      io.puts
      io.puts "  ###########################################"
      io.puts "  ##    #{heading}"
      io.puts "  ###########################################"
      io.puts
      infos.each do |info|
        next unless 'A' <= info.name[0] <= 'Z' # Bug in typelib?
        io.puts info.definition
      end
    end

    # Third pass, everything except enums, flags & constants
    grouped_infos.each do |type, infos|
      next if type == LibGObjectIntrospection::GIInfoType::ENUM ||
              type == LibGObjectIntrospection::GIInfoType::FLAGS ||
              type == LibGObjectIntrospection::GIInfoType::CONSTANT

      heading = type.to_s.capitalize
      heading += 's' unless heading.ends_with? 's'
      io.puts
      io.puts "  ###########################################"
      io.puts "  ##    #{heading}"
      io.puts "  ###########################################"
      io.puts
      infos.each do |info|
        case info
        when GIStructInfo
          next if info.gtype? # Hide them
        end
        io.puts info.definition
      end
    end

    io.puts "end"
  end
end

namespace = "GIRepository"
# namespace = "GLib"
# namespace = "Gio"
# namespace = "GObject"

# GIRepository.instance.version namespace
# GIRepository.instance.typelib_path namespace

GIRepository.instance.require namespace
GIRepository.instance.loaded_namespaces.each do |name|
  print "Generate #{name}... "
  Namespace.new(name).write "src/"
  puts "done."
end

# puts Namespace.new(namespace).definition
# puts GIRepository.instance.c_prefix(namespace)
