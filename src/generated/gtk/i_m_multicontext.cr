require "./i_m_context"

module Gtk
  class IMMulticontext < IMContext
    def initialize(@gtk_i_m_multicontext)
    end

    def to_unsafe
      @gtk_i_m_multicontext.not_nil!
    end

    def self.new_internal
      __return_value = LibGtk.i_m_multicontext_new
      Gtk::IMContext.new(__return_value)
    end

    def append_menuitems(menushell)
      __return_value = LibGtk.i_m_multicontext_append_menuitems((to_unsafe as LibGtk::IMMulticontext*), (menushell.to_unsafe as LibGtk::MenuShell*))
      __return_value
    end

    def context_id
      __return_value = LibGtk.i_m_multicontext_get_context_id((to_unsafe as LibGtk::IMMulticontext*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def context_id=(context_id)
      __return_value = LibGtk.i_m_multicontext_set_context_id((to_unsafe as LibGtk::IMMulticontext*), context_id)
      __return_value
    end

  end
end

