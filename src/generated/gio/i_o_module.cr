module Gio
  class IOModule < GObject::TypeModule
    @pointer : Void*
    def initialize(pointer : LibGio::IOModule*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::IOModule*)
    end

    # Implements TypePlugin
    def self.new(filename) : self
      __return_value = LibGio.i_o_module_new(filename.to_unsafe)
      cast Gio::IOModule.new(__return_value)
    end

    def self.query
      __return_value = LibGio.i_o_module_query
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def load
      LibGio.i_o_module_load(@pointer.as(LibGio::IOModule*))
      nil
    end

    def unload
      LibGio.i_o_module_unload(@pointer.as(LibGio::IOModule*))
      nil
    end

  end
end

