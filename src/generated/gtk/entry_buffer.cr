module Gtk
  class EntryBuffer < GObject::Object
    def initialize @gtk_entry_buffer
    end

    def to_unsafe
      @gtk_entry_buffer.not_nil!
    end




    def self.new_internal(initial_chars, n_initial_chars)
      __return_value = LibGtk.entry_buffer_new(initial_chars && initial_chars, Int32.cast(n_initial_chars))
      Gtk::EntryBuffer.new(__return_value)
    end

    def delete_text(position, n_chars)
      __return_value = LibGtk.entry_buffer_delete_text((to_unsafe as LibGtk::EntryBuffer*), UInt32.cast(position), Int32.cast(n_chars))
      __return_value
    end

    def emit_deleted_text(position, n_chars)
      __return_value = LibGtk.entry_buffer_emit_deleted_text((to_unsafe as LibGtk::EntryBuffer*), UInt32.cast(position), UInt32.cast(n_chars))
      __return_value
    end

    def emit_inserted_text(position, chars, n_chars)
      __return_value = LibGtk.entry_buffer_emit_inserted_text((to_unsafe as LibGtk::EntryBuffer*), UInt32.cast(position), chars, UInt32.cast(n_chars))
      __return_value
    end

    def bytes
      __return_value = LibGtk.entry_buffer_get_bytes((to_unsafe as LibGtk::EntryBuffer*))
      __return_value
    end

    def length
      __return_value = LibGtk.entry_buffer_get_length((to_unsafe as LibGtk::EntryBuffer*))
      __return_value
    end

    def max_length
      __return_value = LibGtk.entry_buffer_get_max_length((to_unsafe as LibGtk::EntryBuffer*))
      __return_value
    end

    def text
      __return_value = LibGtk.entry_buffer_get_text((to_unsafe as LibGtk::EntryBuffer*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def insert_text(position, chars, n_chars)
      __return_value = LibGtk.entry_buffer_insert_text((to_unsafe as LibGtk::EntryBuffer*), UInt32.cast(position), chars, Int32.cast(n_chars))
      __return_value
    end

    def max_length=(max_length)
      __return_value = LibGtk.entry_buffer_set_max_length((to_unsafe as LibGtk::EntryBuffer*), Int32.cast(max_length))
      __return_value
    end

    def set_text(chars, n_chars)
      __return_value = LibGtk.entry_buffer_set_text((to_unsafe as LibGtk::EntryBuffer*), chars, Int32.cast(n_chars))
      __return_value
    end

  end
end

