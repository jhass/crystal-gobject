module Gtk
  class BindingArg
    include GObject::WrappedType

    def self.new(arg_type : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      new(ptr.as(LibGtk::BindingArg*)).tap do |object|
        object.arg_type = arg_type unless arg_type.nil?
      end
    end

    @gtk_binding_arg : LibGtk::BindingArg*?
    def initialize(@gtk_binding_arg : LibGtk::BindingArg*)
    end

    def to_unsafe
      @gtk_binding_arg.not_nil!.as(Void*)
    end

    def arg_type
      (to_unsafe.value.arg_type)
    end

    def arg_type=(value : UInt64)
      to_unsafe.value.arg_type = UInt64.new(value)
    end

  end
end

