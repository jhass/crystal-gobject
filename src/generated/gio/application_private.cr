module Gio
  class ApplicationPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::ApplicationPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ApplicationPrivate*)
    end

  end
end

