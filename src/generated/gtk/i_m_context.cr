module Gtk
  class IMContext < GObject::Object
    def initialize @gtk_i_m_context
    end

    def to_unsafe
      @gtk_i_m_context.not_nil!
    end

    def input_hints=(__value)
      LibGtk.i_m_context_set_input_hints((to_unsafe as LibGtk::IMContext*), __value)
    end

    def input_purpose=(__value)
      LibGtk.i_m_context_set_input_purpose((to_unsafe as LibGtk::IMContext*), __value)
    end

    def delete_surrounding(offset, n_chars)
      __return_value = LibGtk.i_m_context_delete_surrounding((to_unsafe as LibGtk::IMContext*), Int32.cast(offset), Int32.cast(n_chars))
      __return_value
    end

    def filter_keypress(event)
      __return_value = LibGtk.i_m_context_filter_keypress((to_unsafe as LibGtk::IMContext*), (event.to_unsafe as LibGdk::EventKey*))
      __return_value
    end

    def focus_in
      __return_value = LibGtk.i_m_context_focus_in((to_unsafe as LibGtk::IMContext*))
      __return_value
    end

    def focus_out
      __return_value = LibGtk.i_m_context_focus_out((to_unsafe as LibGtk::IMContext*))
      __return_value
    end

    def preedit_string(str, attrs, cursor_pos)
      __return_value = LibGtk.i_m_context_get_preedit_string((to_unsafe as LibGtk::IMContext*), str, (attrs.to_unsafe as LibPango::AttrList*), Int32.cast(cursor_pos))
      __return_value
    end

    def surrounding(text, cursor_index)
      __return_value = LibGtk.i_m_context_get_surrounding((to_unsafe as LibGtk::IMContext*), text, Int32.cast(cursor_index))
      __return_value
    end

    def reset
      __return_value = LibGtk.i_m_context_reset((to_unsafe as LibGtk::IMContext*))
      __return_value
    end

    def client_window=(window)
      __return_value = LibGtk.i_m_context_set_client_window((to_unsafe as LibGtk::IMContext*), (window.to_unsafe as LibGdk::Window*))
      __return_value
    end

    def cursor_location=(area)
      __return_value = LibGtk.i_m_context_set_cursor_location((to_unsafe as LibGtk::IMContext*), (area.to_unsafe as LibCairo::RectangleInt*))
      __return_value
    end

    def surrounding=(text, len, cursor_index)
      __return_value = LibGtk.i_m_context_set_surrounding((to_unsafe as LibGtk::IMContext*), text, Int32.cast(len), Int32.cast(cursor_index))
      __return_value
    end

    def use_preedit=(use_preedit)
      __return_value = LibGtk.i_m_context_set_use_preedit((to_unsafe as LibGtk::IMContext*), Bool.cast(use_preedit))
      __return_value
    end

  end
end

