require "./base_info"

module GIRepository
  class SignalInfo < BaseInfo
    include CallableInfo

    def flags
      GIRepository.signal_info_get_flags(self)
    end

    def true_stops_emit?
      GIRepository.signal_info_true_stops_emit(self)
    end

    def lib_definition(builder)
      builder.comment "Signal #{name}"
    end

    def wrapper_definition(builder, libname)
      ret_type = return_type.wrapper_definition(libname)
      ret_type = nil if ret_type == "Void*"
      proc = builder.proc_type(args.map(&.type.wrapper_definition(builder, libname)), return_type: ret_type)
      alias_name = "#{self.alias_name}Signal"
      builder.attach_to_next_section { builder.def_alias alias_name, proc }

      proc_arguments = args.each.with_index.map { |ai| arg, i = ai; builder.arg("arg#{i}", type: arg.type.signal_lib_definition(builder)) }.to_a
      proc_arguments << proc_arguments.shift # We connect with SWAPPED flag, so we need to shift  the first argument to be the last
      block_arguments = args.each.with_index.map { |ai| arg, i = ai; arg.type.convert_to_crystal(builder, "arg#{i}") }.to_a
      builder.def_method("on_#{identifier}", builder.arg("block", type: alias_name, prefix: :block_capture)) do
        callback = line assign_var def_proc(proc_arguments) { |b|
          return_value = b.call("call", block_arguments, receiver: "block")
          b.line return_type.convert_from_crystal(return_value)
        }
        line call("connect", literal(name), callback)
      end
    end

    private def alias_name
      name.try &.split("-").map(&.capitalize).join
    end

    private def identifier
      name = self.name.try &.tr("-", "_")
      name += "_" if name && {"begin", "end"}.includes? name
      name
    end

    Dumper.def do
      dumper.puts "* flags = #{flags}"
      dumper.puts "* true_stops_emit = #{true_stops_emit?}"
    end
  end
end
