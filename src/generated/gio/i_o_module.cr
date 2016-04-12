module Gio
  class IOModule < GObject::TypeModule
    def initialize(@gio_i_o_module)
    end

    def to_unsafe
      @gio_i_o_module.not_nil!
    end

    # Implements TypePlugin
    def self.new_internal(filename)
      __return_value = LibGio.i_o_module_new(filename)
      cast Gio::IOModule.new(__return_value)
    end

    def self.query
      __return_value = LibGio.i_o_module_query
      PointerIterator.new(__return_value) {|__item_18| (raise "Expected string but got null" unless __item_18; ::String.new(__item_18)) }
    end

    def load
      __return_value = LibGio.i_o_module_load((to_unsafe as LibGio::IOModule*))
      __return_value
    end

    def unload
      __return_value = LibGio.i_o_module_unload((to_unsafe as LibGio::IOModule*))
      __return_value
    end

  end
end

