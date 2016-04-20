module Gtk
  class IMContextInfo
    include GObject::WrappedType

    @gtk_i_m_context_info : LibGtk::IMContextInfo*?
    def initialize(@gtk_i_m_context_info : LibGtk::IMContextInfo*)
    end

    def to_unsafe
      @gtk_i_m_context_info.not_nil!
    end

  end
end

