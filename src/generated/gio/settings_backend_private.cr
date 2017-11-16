module Gio
  class SettingsBackendPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SettingsBackendPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SettingsBackendPrivate*)
    end

  end
end

