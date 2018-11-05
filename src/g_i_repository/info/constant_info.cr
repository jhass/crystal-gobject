require "./base_info"

module GIRepository
  class ConstantInfo < BaseInfo
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
      TypeInfo.new LibGIRepository.constant_info_get_type(self)
    end

    def literal
      with_value do |size, value|
        case type.tag
        when LibGIRepository::TypeTag::BOOLEAN
          value.v_boolean.inspect
        when LibGIRepository::TypeTag::INT8
          value.v_int8.inspect
        when LibGIRepository::TypeTag::UINT8
          value.v_uint8.inspect
        when LibGIRepository::TypeTag::INT16
          value.v_int16.inspect
        when LibGIRepository::TypeTag::UINT16
          value.v_uint16.inspect
        when LibGIRepository::TypeTag::INT32
          value.v_int32.inspect
        when LibGIRepository::TypeTag::UINT32
          value.v_uint32.inspect
        when LibGIRepository::TypeTag::INT64
          value.v_int64.inspect
        when LibGIRepository::TypeTag::UINT64
          value.v_uint64.inspect
        when LibGIRepository::TypeTag::FLOAT
          value.v_float.inspect
        when LibGIRepository::TypeTag::DOUBLE
          value.v_double.inspect
        when LibGIRepository::TypeTag::UTF8
          string = String.new(value.v_string)
          string.inspect
        when LibGIRepository::TypeTag::INTERFACE
          "# INTERFACE CONSTANT #{name} #{size}" # debug, should never end up being generated
        else
          raise "Bug: Unhandled constant type #{type.tag}"
        end
      end
    end

    def lib_definition
      if type.tag == LibGIRepository::TypeTag::INTERFACE
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
  end
end
