module GIRepository
  module RegisteredTypeInfo
    def type_lib_definition
      "Lib#{namespace}::#{name}"
    end
  end
end
