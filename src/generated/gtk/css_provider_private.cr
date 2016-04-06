module Gtk
  class CssProviderPrivate
    include GObject::WrappedType

    def initialize(@gtk_css_provider_private)
    end

    def to_unsafe
      @gtk_css_provider_private.not_nil!
    end

  end
end

