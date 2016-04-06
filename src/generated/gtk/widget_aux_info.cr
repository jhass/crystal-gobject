module Gtk
  class WidgetAuxInfo
    include GObject::WrappedType

    def initialize()
    end

    def to_unsafe
      @gtk_widget_aux_info.not_nil!
    end

  end
end

