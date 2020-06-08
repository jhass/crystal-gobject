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
      proc = builder.proc_type(args.map { |arg|
        type = arg.type.wrapper_definition(builder, libname)
        arg.nilable? ? "#{type}?" : type
      }, return_type: ret_type)
      alias_name = "#{self.alias_name}Signal"
      builder.attach_to_next_section { builder.def_alias alias_name, proc }

      proc_arguments = args.each.with_index.map { |ai|
        arg, i = ai
        builder.arg("arg#{i}", type: arg.type.signal_lib_definition(builder))
      }.to_a
      proc_arguments << builder.arg("box", type: "Void*") # We pass the trampoline user data
      block_arguments = args.each.with_index.map { |ai|
        arg, i = ai
        value = arg.type.convert_to_crystal(builder, "arg#{i}")
        if arg.type.is_pointer_in_signal?
          null_check = builder.call("null?", receiver: "arg#{i}")
          unexpected_null = builder.call("raise_unexpected_null", builder.literal("#{arg.name} in #{identifier}"), receiver: "GObject")
          arg.nilable? ? builder.ternary(null_check, builder.literal(nil), value) : builder.ternary(null_check, unexpected_null, value)
        else
          value
        end
      }.to_a
      trampoline_args = Array.new(args.size) { |i| "arg#{i}" }
      builder.def_method("on_#{identifier}", builder.arg("block", type: alias_name, prefix: :block_capture)) do
        callback = line assign_var def_proc(proc_arguments) { |b|
          trampoline = b.call("unbox", "box", receiver: "::Box(#{alias_name})")
          return_value = b.call("call", block_arguments, receiver: trampoline)
          b.line return_type.convert_from_crystal(return_value)
        }

        # If we get a method reference passed, (&->foo), unboxing to a proc will incorrectly pass closure data as first argument
        # for some reason. So we make a trampoline that always needs closure data by capturing the passed proc
        # and thus is tolerant to this bug
        trampoline = call("new", receiver: alias_name, block_args: trampoline_args) { |b|
          b.line b.call("call", trampoline_args, receiver: "block")
        }
        trampoline_box = line assign_var call("box", trampoline, receiver: "::Box")

        this = call("as", "LibGObject::Object*", receiver: "@pointer")
        callback_ptr = call("new", call("pointer", receiver: callback),
          call("null", receiver: "Pointer(Void)"), receiver: "LibGObject::Callback")
        register_box = call("register", trampoline_box, receiver: "GObject::ClosureDataManager")
        deregister_box = "->#{call("deregister", receiver: "GObject::ClosureDataManager")}"

        line call("signal_connect_data",
          this, literal(name), callback_ptr, register_box,
          deregister_box, "GObject::ConnectFlags::None", receiver: "LibGObject")
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
