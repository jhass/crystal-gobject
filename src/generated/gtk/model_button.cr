require "./button"

module Gtk
  class ModelButton < Button
    @gtk_model_button : LibGtk::ModelButton*?
    def initialize(@gtk_model_button : LibGtk::ModelButton*)
    end

    def to_unsafe
      @gtk_model_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable








    def self.new
      __return_value = LibGtk.model_button_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

