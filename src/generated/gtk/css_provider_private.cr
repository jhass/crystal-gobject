module Gtk
  class CssProviderPrivate
    include GObject::WrappedType

    @gtk_css_provider_private : LibGtk::CssProviderPrivate*?
    def initialize(@gtk_css_provider_private : LibGtk::CssProviderPrivate*)
    end

    def to_unsafe
      @gtk_css_provider_private.not_nil!
    end

  end
end

