module Gio
  class SettingsPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SettingsPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SettingsPrivate*)
    end

  end
end

