module Gio
  class FileMonitorPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::FileMonitorPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FileMonitorPrivate*)
    end

  end
end

