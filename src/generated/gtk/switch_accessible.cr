require "./widget_accessible"

module Gtk
  class SwitchAccessible < WidgetAccessible
    @gtk_switch_accessible : LibGtk::SwitchAccessible*?
    def initialize(@gtk_switch_accessible : LibGtk::SwitchAccessible*)
    end

    def to_unsafe
      @gtk_switch_accessible.not_nil!.as(Void*)
    end

    # Implements Action
    # Implements Component
  end
end

