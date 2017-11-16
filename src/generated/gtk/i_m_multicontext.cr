require "./i_m_context"

module Gtk
  class IMMulticontext < IMContext
    @pointer : Void*
    def initialize(pointer : LibGtk::IMMulticontext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IMMulticontext*)
    end

    def self.new : self
      __return_value = LibGtk.i_m_multicontext_new
      cast Gtk::IMContext.new(__return_value)
    end

    def append_menuitems(menushell)
      LibGtk.i_m_multicontext_append_menuitems(@pointer.as(LibGtk::IMMulticontext*), menushell.to_unsafe.as(LibGtk::MenuShell*))
      nil
    end

    def context_id
      __return_value = LibGtk.i_m_multicontext_get_context_id(@pointer.as(LibGtk::IMMulticontext*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def context_id=(context_id)
      LibGtk.i_m_multicontext_set_context_id(@pointer.as(LibGtk::IMMulticontext*), context_id.to_unsafe)
      nil
    end

  end
end

