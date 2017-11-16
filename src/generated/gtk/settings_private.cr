module Gtk
  class SettingsPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::SettingsPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SettingsPrivate*)
    end

  end
end

