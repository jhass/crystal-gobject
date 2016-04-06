module Gtk
  class IMContextInfo
    include GObject::WrappedType

    def initialize(@gtk_i_m_context_info)
    end

    def to_unsafe
      @gtk_i_m_context_info.not_nil!
    end

  end
end

