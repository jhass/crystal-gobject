module Gio
  class IOModuleScope
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::IOModuleScope*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::IOModuleScope*)
    end

    def block(basename)
      LibGio.i_o_module_scope_block(@pointer.as(LibGio::IOModuleScope*), basename.to_unsafe)
      nil
    end

    def free
      LibGio.i_o_module_scope_free(@pointer.as(LibGio::IOModuleScope*))
      nil
    end

  end
end

