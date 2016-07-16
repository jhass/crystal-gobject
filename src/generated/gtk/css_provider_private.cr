module Gtk
  class CssProviderPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::CssProviderPrivate*))
    end

    @gtk_css_provider_private : LibGtk::CssProviderPrivate*?
    def initialize(@gtk_css_provider_private : LibGtk::CssProviderPrivate*)
    end

    def to_unsafe
      @gtk_css_provider_private.not_nil!.as(Void*)
    end

  end
end

