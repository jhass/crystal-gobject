require "./button_accessible"

module Gtk
  class ScaleButtonAccessible < ButtonAccessible
    @gtk_scale_button_accessible : LibGtk::ScaleButtonAccessible*?
    def initialize(@gtk_scale_button_accessible : LibGtk::ScaleButtonAccessible*)
    end

    def to_unsafe
      @gtk_scale_button_accessible.not_nil!.as(Void*)
    end

    # Implements Action
    # Implements Component
    # Implements Image
    # Implements Value
  end
end

