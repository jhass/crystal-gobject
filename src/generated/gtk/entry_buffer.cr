module Gtk
  class EntryBuffer < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::EntryBuffer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EntryBuffer*)
    end

    def length
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "length", gvalue)
      gvalue
    end

    def max_length
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_length", gvalue)
      gvalue
    end

    def text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text", gvalue)
      gvalue.string
    end

    def self.new(initial_chars, n_initial_chars) : self
      __return_value = LibGtk.entry_buffer_new(initial_chars ? initial_chars.to_unsafe : nil, Int32.new(n_initial_chars))
      cast Gtk::EntryBuffer.new(__return_value)
    end

    def delete_text(position, n_chars)
      __return_value = LibGtk.entry_buffer_delete_text(@pointer.as(LibGtk::EntryBuffer*), UInt32.new(position), Int32.new(n_chars))
      __return_value
    end

    def emit_deleted_text(position, n_chars)
      LibGtk.entry_buffer_emit_deleted_text(@pointer.as(LibGtk::EntryBuffer*), UInt32.new(position), UInt32.new(n_chars))
      nil
    end

    def emit_inserted_text(position, chars, n_chars)
      LibGtk.entry_buffer_emit_inserted_text(@pointer.as(LibGtk::EntryBuffer*), UInt32.new(position), chars.to_unsafe, UInt32.new(n_chars))
      nil
    end

    def bytes
      __return_value = LibGtk.entry_buffer_get_bytes(@pointer.as(LibGtk::EntryBuffer*))
      __return_value
    end

    def length
      __return_value = LibGtk.entry_buffer_get_length(@pointer.as(LibGtk::EntryBuffer*))
      __return_value
    end

    def max_length
      __return_value = LibGtk.entry_buffer_get_max_length(@pointer.as(LibGtk::EntryBuffer*))
      __return_value
    end

    def text
      __return_value = LibGtk.entry_buffer_get_text(@pointer.as(LibGtk::EntryBuffer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def insert_text(position, chars, n_chars)
      __return_value = LibGtk.entry_buffer_insert_text(@pointer.as(LibGtk::EntryBuffer*), UInt32.new(position), chars.to_unsafe, Int32.new(n_chars))
      __return_value
    end

    def max_length=(max_length)
      LibGtk.entry_buffer_set_max_length(@pointer.as(LibGtk::EntryBuffer*), Int32.new(max_length))
      nil
    end

    def set_text(chars, n_chars)
      LibGtk.entry_buffer_set_text(@pointer.as(LibGtk::EntryBuffer*), chars.to_unsafe, Int32.new(n_chars))
      nil
    end

    alias DeletedTextSignal = EntryBuffer, UInt32, UInt32 ->
    def on_deleted_text(&__block : DeletedTextSignal)
      __callback = ->(_arg0 : LibGtk::EntryBuffer*, _arg1 : UInt32*, _arg2 : UInt32*) {
       __return_value = __block.call(EntryBuffer.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("deleted-text", __callback)
    end

    alias InsertedTextSignal = EntryBuffer, UInt32, String, UInt32 ->
    def on_inserted_text(&__block : InsertedTextSignal)
      __callback = ->(_arg0 : LibGtk::EntryBuffer*, _arg1 : UInt32*, _arg2 : UInt8**, _arg3 : UInt32*) {
       __return_value = __block.call(EntryBuffer.new(_arg0), _arg1, (raise "Expected string but got null" unless _arg2; ::String.new(_arg2)), _arg3)
       __return_value
      }
      connect("inserted-text", __callback)
    end

  end
end

