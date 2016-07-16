module Gio
  class SimpleActionGroupPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SimpleActionGroupPrivate*))
    end

    @gio_simple_action_group_private : LibGio::SimpleActionGroupPrivate*?
    def initialize(@gio_simple_action_group_private : LibGio::SimpleActionGroupPrivate*)
    end

    def to_unsafe
      @gio_simple_action_group_private.not_nil!.as(Void*)
    end

  end
end

