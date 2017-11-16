module Gtk
  class SizeGroup < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::SizeGroup*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SizeGroup*)
    end

    # Implements Buildable
    def ignore_hidden
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ignore_hidden", gvalue)
      gvalue.boolean
    end

    def mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "mode", gvalue)
      gvalue.enum
    end

    def self.new(mode : Gtk::SizeGroupMode) : self
      __return_value = LibGtk.size_group_new(mode)
      cast Gtk::SizeGroup.new(__return_value)
    end

    def add_widget(widget)
      LibGtk.size_group_add_widget(@pointer.as(LibGtk::SizeGroup*), widget.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def ignore_hidden
      __return_value = LibGtk.size_group_get_ignore_hidden(@pointer.as(LibGtk::SizeGroup*))
      __return_value
    end

    def mode
      __return_value = LibGtk.size_group_get_mode(@pointer.as(LibGtk::SizeGroup*))
      __return_value
    end

    def widgets
      __return_value = LibGtk.size_group_get_widgets(@pointer.as(LibGtk::SizeGroup*))
      GLib::SListIterator(Gtk::Widget, LibGtk::Widget**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def remove_widget(widget)
      LibGtk.size_group_remove_widget(@pointer.as(LibGtk::SizeGroup*), widget.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def ignore_hidden=(ignore_hidden)
      LibGtk.size_group_set_ignore_hidden(@pointer.as(LibGtk::SizeGroup*), ignore_hidden)
      nil
    end

    def mode=(mode : Gtk::SizeGroupMode)
      LibGtk.size_group_set_mode(@pointer.as(LibGtk::SizeGroup*), mode)
      nil
    end

  end
end

