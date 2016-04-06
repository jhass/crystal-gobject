require "./button"

module Gtk
  class ModelButton < Button
    def initialize(@gtk_model_button)
    end

    def to_unsafe
      @gtk_model_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable








    def self.new_internal
      __return_value = LibGtk.model_button_new
      Gtk::Widget.new(__return_value)
    end

  end
end

