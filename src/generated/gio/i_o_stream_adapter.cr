module Gio
  class IOStreamAdapter
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::IOStreamAdapter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::IOStreamAdapter*)
    end

  end
end

