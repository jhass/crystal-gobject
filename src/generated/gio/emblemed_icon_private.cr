module Gio
  class EmblemedIconPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::EmblemedIconPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::EmblemedIconPrivate*)
    end

  end
end

