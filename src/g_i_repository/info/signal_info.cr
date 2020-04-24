require "./base_info"

module GIRepository
  class SignalInfo < BaseInfo
    include CallableInfo

    def lib_definition
      "  # Signal #{name}"
    end

    def wrapper_definition(libname, indent = "")
      String.build do |io|
        io << "#{indent}alias #{alias_name}Signal = "
        io << args.map(&.type.wrapper_definition(libname)).join(", ")
        io << " ->"
        ret_type = return_type.wrapper_definition(libname)
        io << ' ' << ret_type unless ret_type == "Void*"
        io.puts
        io.puts "#{indent}def on_#{identifier}(&block : #{alias_name}Signal)"
        proc_arguments = args.each.with_index.map { |ai| arg, i = ai; "arg#{i} : #{arg.type.signal_lib_definition}" }.to_a
        proc_arguments << proc_arguments.shift # We connect with SWAPPED flag, so we need to shift  the first argument to be the last
        block_arguments = args.each.with_index.map { |ai| arg, i = ai; arg.type.convert_to_crystal("arg#{i}") }
        io.puts "#{indent}  callback = ->(#{proc_arguments.join(", ")}) {"
        io.puts "#{indent}    return_value = block.call(#{block_arguments.join(", ")})"
        io.puts "#{indent}   #{return_type.convert_from_crystal("return_value")}"
        io.puts "#{indent}  }"
        io.puts "#{indent}  connect(\"#{name}\", callback)"
        io.puts "#{indent}end"
        io.puts
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
  end
end
