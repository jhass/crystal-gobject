module Gio
  class IOModule < GObject::TypeModule
    @gio_i_o_module : LibGio::IOModule*?
    def initialize(@gio_i_o_module : LibGio::IOModule*)
    end

    def to_unsafe
      @gio_i_o_module.not_nil!
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
      LibGio.i_o_module_load(to_unsafe.as(LibGio::IOModule*))
      nil
    end

    def unload
      LibGio.i_o_module_unload(to_unsafe.as(LibGio::IOModule*))
      nil
    end

  end
end

