require "./base_info"

module GIRepository
  class ConstantInfo < BaseInfo
    def name
      super.try &.sub(/\A[a-z]/) { |m| m[0].upcase }
    end

    def value
      size = LibGIRepository.constant_info_get_value(self, out value)
      {size, value}
    end

    def with_value
      size, val = self.value
      yield size, val
    ensure
      # TODO: compiler bug, gets confused when local is the same name as the method
      # and can't nil check this somehow
      foo = val.not_nil!
      LibGIRepository.constant_info_free_value(self, pointerof(foo))
    end

    def type
      BaseInfo.wrap(GIRepository.constant_info_get_type(self)).as(TypeInfo)
    end

    def literal(builder)
      with_value do |size, value|
        case type.tag
        when .boolean?
          builder.literal value.v_boolean
        when .int8?
          builder.literal value.v_int8
        when .uint8?
          builder.literal value.v_uint8
        when .int16?
          builder.literal value.v_int16
        when .uint16?
          builder.literal value.v_uint16
        when .int32?
          builder.literal value.v_int32
        when .uint32?
          builder.literal value.v_uint32
        when .int64?
          builder.literal value.v_int64
        when .uint64?
          builder.literal value.v_uint64
        when .float?
          builder.literal value.v_float
        when .double?
          builder.literal value.v_double
        when .utf8?
          builder.literal String.new(value.v_string)
        when .array?
          pointer_type = "Pointer(StaticArray(#{type.param_type.lib_definition(builder)}, #{size}))"
          if size > 0
            pointer = builder.call "new", builder.literal(value.v_pointer), receiver: pointer_type
            builder.call "value", receiver: pointer
          else
            builder.call "null", receiver: pointer_type
          end
        when .interface?
          builder.comment "INTERFACE CONSTANT #{name} #{size}" # debug, should never end up being generated
        else
          raise "Bug: Unhandled constant type #{type.tag}"
        end
      end
    end

    def lib_definition(builder)
      if type.tag.interface?
        builder.comment "#{name} = ungeneratable value"
      elsif name = self.name
        builder.end_of_line_comment ": #{type.lib_definition(builder)}"
        builder.line builder.assign name, literal(builder)
      else
        builder.comment "# nameless constant for #{literal(builder)}"
      end
    end

    def wrapper_definition(builder, libname)
      if name = self.name
        builder.line builder.assign name, "#{libname}::#{name}"
      end
    end

    Dumper.def do
      Dumper.dump_child type
      dumper.puts "* value = #{Crout.build { |b| literal(b) }}"
    end
  end
end
