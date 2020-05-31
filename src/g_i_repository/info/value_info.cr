require "./base_info"

module GIRepository
  class ValueInfo < BaseInfo
    def value : Int64
      GIRepository.value_info_get_value(self)
    end

    def literal(tag)
      case tag
      when .int8?
        value.to_i8
      when .uint8?, .unichar?
        value.to_u8
      when .int16?
        value.to_i16
      when .uint16?
        value.to_u16
      when .int32?
        value.to_i32
      when .uint32?
        value.to_u32
      when .uint64?
        value.to_u64
      when .float?
        value.to_f
      when .double?
        value.to_f64
      else
        value
      end
    end

    Dumper.def do
      dumper.puts "* value = #{value}"
    end
  end
end
