require "./i_m_context"

module Gtk
  class IMContextSimple < IMContext
    @pointer : Void*
    def initialize(pointer : LibGtk::IMContextSimple*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IMContextSimple*)
    end

    def self.new : self
      __return_value = LibGtk.i_m_context_simple_new
      cast Gtk::IMContext.new(__return_value)
    end

    def add_compose_file(compose_file)
      LibGtk.i_m_context_simple_add_compose_file(@pointer.as(LibGtk::IMContextSimple*), compose_file.to_unsafe)
      nil
    end

  end
end

