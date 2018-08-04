module Gtk
  class RecentManager < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::RecentManager*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RecentManager*)
    end

    def filename
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "filename", gvalue)
      gvalue.string
    end

    def size
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "size", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.recent_manager_new
      cast Gtk::RecentManager.new(__return_value)
    end

    def self.default
      __return_value = LibGtk.recent_manager_get_default
      Gtk::RecentManager.new(__return_value)
    end

    def add_full(uri, recent_data)
      __return_value = LibGtk.recent_manager_add_full(@pointer.as(LibGtk::RecentManager*), uri.to_unsafe, recent_data.to_unsafe.as(LibGtk::RecentData*))
      __return_value
    end

    def add_item(uri)
      __return_value = LibGtk.recent_manager_add_item(@pointer.as(LibGtk::RecentManager*), uri.to_unsafe)
      __return_value
    end

    def items
      __return_value = LibGtk.recent_manager_get_items(@pointer.as(LibGtk::RecentManager*))
      GLib::ListIterator(Gtk::RecentInfo, LibGtk::RecentInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def has_item(uri)
      __return_value = LibGtk.recent_manager_has_item(@pointer.as(LibGtk::RecentManager*), uri.to_unsafe)
      __return_value
    end

    def lookup_item(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_manager_lookup_item(@pointer.as(LibGtk::RecentManager*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      Gtk::RecentInfo.new(__return_value) if __return_value
    end

    def move_item(uri, new_uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_manager_move_item(@pointer.as(LibGtk::RecentManager*), uri.to_unsafe, new_uri ? new_uri.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def purge_items
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_manager_purge_items(@pointer.as(LibGtk::RecentManager*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_item(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_manager_remove_item(@pointer.as(LibGtk::RecentManager*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    alias ChangedSignal = RecentManager ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::RecentManager*) {
       __return_value = __block.call(RecentManager.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

