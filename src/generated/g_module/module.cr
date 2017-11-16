module GModule
  class Module
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGModule::Module*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGModule::Module*)
    end

    def close
      __return_value = LibGModule.module_close(@pointer.as(LibGModule::Module*))
      __return_value
    end

    def make_resident
      LibGModule.module_make_resident(@pointer.as(LibGModule::Module*))
      nil
    end

    def name
      __return_value = LibGModule.module_name(@pointer.as(LibGModule::Module*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def symbol(symbol_name, symbol)
      __return_value = LibGModule.module_symbol(@pointer.as(LibGModule::Module*), symbol_name.to_unsafe, symbol)
      __return_value
    end

    def self.build_path(directory, module_name)
      __return_value = LibGModule.module_build_path(directory ? directory.to_unsafe : nil, module_name.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.error
      __return_value = LibGModule.module_error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.supported
      __return_value = LibGModule.module_supported
      __return_value
    end

  end
end

