module Gtk
  class SizeGroup < GObject::Object
    @gtk_size_group : LibGtk::SizeGroup*?
    def initialize(@gtk_size_group : LibGtk::SizeGroup*)
    end

    def to_unsafe
      @gtk_size_group.not_nil!
    end

    # Implements Buildable


    def self.new(mode : Gtk::SizeGroupMode) : self
      __return_value = LibGtk.size_group_new(mode)
      cast Gtk::SizeGroup.new(__return_value)
    end

    def add_widget(widget)
      __return_value = LibGtk.size_group_add_widget(to_unsafe.as(LibGtk::SizeGroup*), widget.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def ignore_hidden
      __return_value = LibGtk.size_group_get_ignore_hidden(to_unsafe.as(LibGtk::SizeGroup*))
      __return_value
    end

    def mode
      __return_value = LibGtk.size_group_get_mode(to_unsafe.as(LibGtk::SizeGroup*))
      __return_value
    end

    def widgets
      __return_value = LibGtk.size_group_get_widgets(to_unsafe.as(LibGtk::SizeGroup*))
      GLib::SListIterator(Gtk::Widget, LibGtk::Widget*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def remove_widget(widget)
      __return_value = LibGtk.size_group_remove_widget(to_unsafe.as(LibGtk::SizeGroup*), widget.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def ignore_hidden=(ignore_hidden)
      __return_value = LibGtk.size_group_set_ignore_hidden(to_unsafe.as(LibGtk::SizeGroup*), ignore_hidden)
      __return_value
    end

    def mode=(mode : Gtk::SizeGroupMode)
      __return_value = LibGtk.size_group_set_mode(to_unsafe.as(LibGtk::SizeGroup*), mode)
      __return_value
    end

  end
end

