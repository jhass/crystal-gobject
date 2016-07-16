module Gio
  class IOModuleScope
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::IOModuleScope*))
    end

    @gio_i_o_module_scope : LibGio::IOModuleScope*?
    def initialize(@gio_i_o_module_scope : LibGio::IOModuleScope*)
    end

    def to_unsafe
      @gio_i_o_module_scope.not_nil!
    end

    def block(basename)
      __return_value = LibGio.i_o_module_scope_block(to_unsafe.as(LibGio::IOModuleScope*), basename.to_unsafe)
      __return_value
    end

    def free
      __return_value = LibGio.i_o_module_scope_free(to_unsafe.as(LibGio::IOModuleScope*))
      __return_value
    end

  end
end

