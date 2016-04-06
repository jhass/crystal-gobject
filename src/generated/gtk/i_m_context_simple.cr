require "./i_m_context"

module Gtk
  class IMContextSimple < IMContext
    def initialize(@gtk_i_m_context_simple)
    end

    def to_unsafe
      @gtk_i_m_context_simple.not_nil!
    end

    def self.new_internal
      __return_value = LibGtk.i_m_context_simple_new
      Gtk::IMContext.new(__return_value)
    end

  end
end

