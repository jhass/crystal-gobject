module Gio
  class UnixMountEntry
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::UnixMountEntry*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixMountEntry*)
    end

  end
end

