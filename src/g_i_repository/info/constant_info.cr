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

    def literal
      with_value do |size, value|
        case type.tag
        when .boolean?
          value.v_boolean.inspect
        when .int8?
          value.v_int8.inspect
        when .uint8?
          value.v_uint8.inspect
        when .int16?
          value.v_int16.inspect
        when .uint16?
          value.v_uint16.inspect
        when .int32?
          value.v_int32.inspect
        when .uint32?
          value.v_uint32.inspect
        when .int64?
          value.v_int64.inspect
        when .uint64?
          value.v_uint64.inspect
        when .float?
          value.v_float.inspect
        when .double?
          value.v_double.inspect
        when .utf8?
          string = String.new(value.v_string)
          string.inspect
        when .interface?
          "# INTERFACE CONSTANT #{name} #{size}" # debug, should never end up being generated
        else
          raise "Bug: Unhandled constant type #{type.tag}"
        end
      end
    end

    def lib_definition
      if type.tag.interface?
        "  # #{name} = ungeneratable value"
      else
        "  #{name} = #{literal} # : #{type.lib_definition}"
      end
    end

    def wrapper_definition(libname, indent="")
      String.build do |io|
        io.puts "#{indent}#{name} = #{libname}::#{name}"
      end
    end

    Dumper.def do
      Dumper.dump_child type
      dumper.puts "* value = #{literal}"
    end
  end
end
