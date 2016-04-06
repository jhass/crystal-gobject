require "./base_info"

module GIRepository
  class SignalInfo < BaseInfo
    include CallableInfo

    def lib_definition
      "  # Signal #{name}"
    end

    def wrapper_definition(libname, indent="")
      String.build do |io|
        io << "#{indent}alias #{alias_name}Signal = "
        io << args.map(&.type.wrapper_definition(libname)).join(", ")
        io << " -> "
        ret_type = return_type.wrapper_definition(libname)
        io << ret_type unless ret_type == "Void*"
        io.puts
        io.puts "#{indent}def on_#{identifier}(&__block : #{alias_name}Signal)"
        proc_arguments = args.each.with_index.map {|ai| arg, i = ai; "_arg#{i} : #{libname}::#{arg.type.lib_definition}*" }
        block_arguments = args.each.with_index.map {|ai| arg, i = ai; arg.type.convert_to_crystal("_arg#{i}") }
        io.puts "#{indent}  __callback = ->(#{proc_arguments.join(", ")}) {"
        io.puts "#{indent}   __return_value = __block.call(#{block_arguments.join(", ")})"
        io.puts "#{indent}   #{return_type.convert_from_crystal("__return_value")}"
        io.puts "#{indent}  }"
        io.puts "#{indent}  connect(\"#{name}\", __callback)"
        io.puts "#{indent}end"
        io.puts
      end
    end

    private def alias_name
      name.split("-").map(&.capitalize).join
    end

    private def identifier
      name = self.name.tr("-", "_")
      name += "_" if {"begin", "end"}.includes? name
      name
    end
  end
end
