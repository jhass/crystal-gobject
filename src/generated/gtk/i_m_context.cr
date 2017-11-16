module Gtk
  class IMContext < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::IMContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IMContext*)
    end

    def input_hints
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "input_hints", gvalue)
      gvalue.enum
    end

    def input_purpose
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "input_purpose", gvalue)
      gvalue.enum
    end

    def delete_surrounding(offset, n_chars)
      __return_value = LibGtk.i_m_context_delete_surrounding(@pointer.as(LibGtk::IMContext*), Int32.new(offset), Int32.new(n_chars))
      __return_value
    end

    def filter_keypress(event)
      __return_value = LibGtk.i_m_context_filter_keypress(@pointer.as(LibGtk::IMContext*), event.to_unsafe.as(LibGdk::EventKey*))
      __return_value
    end

    def focus_in
      LibGtk.i_m_context_focus_in(@pointer.as(LibGtk::IMContext*))
      nil
    end

    def focus_out
      LibGtk.i_m_context_focus_out(@pointer.as(LibGtk::IMContext*))
      nil
    end

    def preedit_string(str, attrs, cursor_pos)
      LibGtk.i_m_context_get_preedit_string(@pointer.as(LibGtk::IMContext*), str, attrs, cursor_pos)
      nil
    end

    def surrounding(text, cursor_index)
      __return_value = LibGtk.i_m_context_get_surrounding(@pointer.as(LibGtk::IMContext*), text, cursor_index)
      __return_value
    end

    def reset
      LibGtk.i_m_context_reset(@pointer.as(LibGtk::IMContext*))
      nil
    end

    def client_window=(window)
      LibGtk.i_m_context_set_client_window(@pointer.as(LibGtk::IMContext*), window ? window.to_unsafe.as(LibGdk::Window*) : nil)
      nil
    end

    def cursor_location=(area)
      LibGtk.i_m_context_set_cursor_location(@pointer.as(LibGtk::IMContext*), area.to_unsafe.as(LibGdk::Rectangle*))
      nil
    end

    def set_surrounding(text, len, cursor_index)
      LibGtk.i_m_context_set_surrounding(@pointer.as(LibGtk::IMContext*), text.to_unsafe, Int32.new(len), Int32.new(cursor_index))
      nil
    end

    def use_preedit=(use_preedit)
      LibGtk.i_m_context_set_use_preedit(@pointer.as(LibGtk::IMContext*), use_preedit)
      nil
    end

    alias CommitSignal = IMContext, String ->
    def on_commit(&__block : CommitSignal)
      __callback = ->(_arg0 : LibGtk::IMContext*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(IMContext.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
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

