module Gio
  class OutputStreamPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::OutputStreamPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::OutputStreamPrivate*)
    end

  end
end

