module Gtk
  class CssProviderPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::CssProviderPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CssProviderPrivate*)
    end

  end
end

