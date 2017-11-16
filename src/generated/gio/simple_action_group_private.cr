module Gio
  class SimpleActionGroupPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SimpleActionGroupPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SimpleActionGroupPrivate*)
    end

  end
end

