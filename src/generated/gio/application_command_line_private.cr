module Gio
  class ApplicationCommandLinePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::ApplicationCommandLinePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ApplicationCommandLinePrivate*)
    end

  end
end

