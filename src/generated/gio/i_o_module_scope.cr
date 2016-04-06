module Gio
  class IOModuleScope
    include GObject::WrappedType

    def initialize(@gio_i_o_module_scope)
    end

    def to_unsafe
      @gio_i_o_module_scope.not_nil!
    end

    def block(basename)
      __return_value = LibGio.i_o_module_scope_block((to_unsafe as LibGio::IOModuleScope*), basename)
      __return_value
    end

    def free
      __return_value = LibGio.i_o_module_scope_free((to_unsafe as LibGio::IOModuleScope*))
      __return_value
    end

  end
end

