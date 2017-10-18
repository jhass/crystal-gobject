module Gio
  class IOModuleScope
    include GObject::WrappedType

    @gio_i_o_module_scope : LibGio::IOModuleScope*?
    def initialize(@gio_i_o_module_scope : LibGio::IOModuleScope*)
    end

    def to_unsafe
      @gio_i_o_module_scope.not_nil!
    end

    def block(basename)
      LibGio.i_o_module_scope_block(to_unsafe.as(LibGio::IOModuleScope*), basename.to_unsafe)
      nil
    end

    def free
      LibGio.i_o_module_scope_free(to_unsafe.as(LibGio::IOModuleScope*))
      nil
    end

  end
end

