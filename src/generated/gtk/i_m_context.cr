module Gtk
  class IMContext < GObject::Object
    def initialize(@gtk_i_m_context)
    end

    def to_unsafe
      @gtk_i_m_context.not_nil!
    end



    def delete_surrounding(offset, n_chars)
      __return_value = LibGtk.i_m_context_delete_surrounding((to_unsafe as LibGtk::IMContext*), Int32.new(offset), Int32.new(n_chars))
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
      __return_value = LibGtk.i_m_context_get_preedit_string((to_unsafe as LibGtk::IMContext*), str, (attrs.to_unsafe as LibPango::AttrList*), Int32.new(cursor_pos))
      __return_value
    end

    def surrounding(text, cursor_index)
      __return_value = LibGtk.i_m_context_get_surrounding((to_unsafe as LibGtk::IMContext*), text, Int32.new(cursor_index))
      __return_value
    end

    def reset
      __return_value = LibGtk.i_m_context_reset((to_unsafe as LibGtk::IMContext*))
      __return_value
    end

    def client_window=(window)
      __return_value = LibGtk.i_m_context_set_client_window((to_unsafe as LibGtk::IMContext*), window && (window.to_unsafe as LibGdk::Window*))
      __return_value
    end

    def cursor_location=(area)
      __return_value = LibGtk.i_m_context_set_cursor_location((to_unsafe as LibGtk::IMContext*), (area.to_unsafe as LibGdk::Rectangle*))
      __return_value
    end

    def set_surrounding(text, len, cursor_index)
      __return_value = LibGtk.i_m_context_set_surrounding((to_unsafe as LibGtk::IMContext*), text, Int32.new(len), Int32.new(cursor_index))
      __return_value
    end

    def use_preedit=(use_preedit)
      __return_value = LibGtk.i_m_context_set_use_preedit((to_unsafe as LibGtk::IMContext*), use_preedit)
      __return_value
    end

    alias CommitSignal = IMContext, UInt8 -> 
    def on_commit(&__block : CommitSignal)
      __callback = ->(_arg0 : LibGtk::IMContext*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(IMContext.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)))
       __return_value
      }
      connect("commit", __callback)
    end

    alias DeleteSurroundingSignal = IMContext, Int32, Int32 -> Bool
    def on_delete_surrounding(&__block : DeleteSurroundingSignal)
      __callback = ->(_arg0 : LibGtk::IMContext*, _arg1 : LibGtk::Int32*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(IMContext.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("delete-surrounding", __callback)
    end

    alias PreeditChangedSignal = IMContext -> 
    def on_preedit_changed(&__block : PreeditChangedSignal)
      __callback = ->(_arg0 : LibGtk::IMContext*) {
       __return_value = __block.call(IMContext.new(_arg0))
       __return_value
      }
      connect("preedit-changed", __callback)
    end

    alias PreeditEndSignal = IMContext -> 
    def on_preedit_end(&__block : PreeditEndSignal)
      __callback = ->(_arg0 : LibGtk::IMContext*) {
       __return_value = __block.call(IMContext.new(_arg0))
       __return_value
      }
      connect("preedit-end", __callback)
    end

    alias PreeditStartSignal = IMContext -> 
    def on_preedit_start(&__block : PreeditStartSignal)
      __callback = ->(_arg0 : LibGtk::IMContext*) {
       __return_value = __block.call(IMContext.new(_arg0))
       __return_value
      }
      connect("preedit-start", __callback)
    end

    alias RetrieveSurroundingSignal = IMContext -> Bool
    def on_retrieve_surrounding(&__block : RetrieveSurroundingSignal)
      __callback = ->(_arg0 : LibGtk::IMContext*) {
       __return_value = __block.call(IMContext.new(_arg0))
       __return_value
      }
      connect("retrieve-surrounding", __callback)
    end

  end
end

