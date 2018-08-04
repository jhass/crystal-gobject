require "./bin"

module Gtk
  class ListBoxRow < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::ListBoxRow*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ListBoxRow*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Buildable
    def activatable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "activatable", gvalue)
      gvalue.boolean
    end

    def selectable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "selectable", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.list_box_row_new
      cast Gtk::Widget.new(__return_value)
    end

    def changed
      LibGtk.list_box_row_changed(@pointer.as(LibGtk::ListBoxRow*))
      nil
    end

    def activatable
      __return_value = LibGtk.list_box_row_get_activatable(@pointer.as(LibGtk::ListBoxRow*))
      __return_value
    end

    def header
      __return_value = LibGtk.list_box_row_get_header(@pointer.as(LibGtk::ListBoxRow*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def index
      __return_value = LibGtk.list_box_row_get_index(@pointer.as(LibGtk::ListBoxRow*))
      __return_value
    end

    def selectable
      __return_value = LibGtk.list_box_row_get_selectable(@pointer.as(LibGtk::ListBoxRow*))
      __return_value
    end

    def selected?
      __return_value = LibGtk.list_box_row_is_selected(@pointer.as(LibGtk::ListBoxRow*))
      __return_value
    end

    def activatable=(activatable)
      LibGtk.list_box_row_set_activatable(@pointer.as(LibGtk::ListBoxRow*), activatable)
      nil
    end

    def header=(header)
      LibGtk.list_box_row_set_header(@pointer.as(LibGtk::ListBoxRow*), header ? header.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def selectable=(selectable)
      LibGtk.list_box_row_set_selectable(@pointer.as(LibGtk::ListBoxRow*), selectable)
      nil
    end

    alias ActivateSignal = ListBoxRow ->
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::ListBoxRow*) {
       __return_value = __block.call(ListBoxRow.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

  end
end

