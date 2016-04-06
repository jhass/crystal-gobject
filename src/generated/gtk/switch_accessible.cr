require "./widget_accessible"

module Gtk
  class SwitchAccessible < WidgetAccessible
    def initialize(@gtk_switch_accessible)
    end

    def to_unsafe
      @gtk_switch_accessible.not_nil!
    end

    # Implements Action
    # Implements Component
  end
end

