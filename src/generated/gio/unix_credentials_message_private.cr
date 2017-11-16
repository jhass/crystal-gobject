module Gio
  class UnixCredentialsMessagePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::UnixCredentialsMessagePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixCredentialsMessagePrivate*)
    end

  end
end

