require "./i_m_context"

module Gtk
  class IMContextSimple < IMContext
    @gtk_i_m_context_simple : LibGtk::IMContextSimple*?
    def initialize(@gtk_i_m_context_simple : LibGtk::IMContextSimple*)
    end

    def to_unsafe
      @gtk_i_m_context_simple.not_nil!
    end

    def self.new
      __return_value = LibGtk.i_m_context_simple_new
      cast Gtk::IMContext.new(__return_value)
    end

    def add_compose_file(compose_file)
      __return_value = LibGtk.i_m_context_simple_add_compose_file((to_unsafe as LibGtk::IMContextSimple*), compose_file)
      __return_value
    end

  end
end

