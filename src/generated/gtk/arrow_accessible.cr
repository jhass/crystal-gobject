require "./widget_accessible"

module Gtk
  class ArrowAccessible < WidgetAccessible
    @gtk_arrow_accessible : LibGtk::ArrowAccessible*?
    def initialize(@gtk_arrow_accessible : LibGtk::ArrowAccessible*)
    end

    def to_unsafe
      @gtk_arrow_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Image
  end
end

