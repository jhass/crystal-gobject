require "./widget_accessible"

module Gtk
  class SpinnerAccessible < WidgetAccessible
    @gtk_spinner_accessible : LibGtk::SpinnerAccessible*?
    def initialize(@gtk_spinner_accessible : LibGtk::SpinnerAccessible*)
    end

    def to_unsafe
      @gtk_spinner_accessible.not_nil!.as(Void*)
    end

    # Implements Component
    # Implements Image
  end
end

