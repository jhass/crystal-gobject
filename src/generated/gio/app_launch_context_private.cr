module Gio
  class AppLaunchContextPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::AppLaunchContextPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::AppLaunchContextPrivate*)
    end

  end
end

