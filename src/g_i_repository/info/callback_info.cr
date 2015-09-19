require "./base_info"
module GIRepository
  class CallbackInfo < BaseInfo
    include CallableInfo

    def lib_definition
      String.build do |io|
        io << " type #{name} = "
        io << args.map(&.type.lib_definition).join(", ")
        io << " -> #{return_type.lib_definition}"
      end
    end
  end
end
