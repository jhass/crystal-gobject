module Gtk
  class TextTagTable < GObject::Object
    def initialize @gtk_text_tag_table
    end

    def to_unsafe
      @gtk_text_tag_table.not_nil!
    end

    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.text_tag_table_new
      Gtk::TextTagTable.new(__return_value)
    end

    def add(tag)
      __return_value = LibGtk.text_tag_table_add((to_unsafe as LibGtk::TextTagTable*), (tag.to_unsafe as LibGtk::TextTag*))
      __return_value
    end

    def foreach(func : LibGtk::TextTagTableForeach, data)
      __return_value = LibGtk.text_tag_table_foreach((to_unsafe as LibGtk::TextTagTable*), func, data)
      __return_value
    end

    def size
      __return_value = LibGtk.text_tag_table_get_size((to_unsafe as LibGtk::TextTagTable*))
      __return_value
    end

    def lookup(name)
      __return_value = LibGtk.text_tag_table_lookup((to_unsafe as LibGtk::TextTagTable*), name)
      Gtk::TextTag.new(__return_value)
    end

    def remove(tag)
      __return_value = LibGtk.text_tag_table_remove((to_unsafe as LibGtk::TextTagTable*), (tag.to_unsafe as LibGtk::TextTag*))
      __return_value
    end

  end
end

