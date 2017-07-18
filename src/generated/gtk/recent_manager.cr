module Gtk
  class RecentManager < GObject::Object
    @gtk_recent_manager : LibGtk::RecentManager*?
    def initialize(@gtk_recent_manager : LibGtk::RecentManager*)
    end

    def to_unsafe
      @gtk_recent_manager.not_nil!
    end

    def filename
      __return_value = LibGtk.recent_manager_get_filename(to_unsafe.as(LibGtk::RecentManager*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def size
      __return_value = LibGtk.recent_manager_get_size(to_unsafe.as(LibGtk::RecentManager*))
      __return_value
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
      __return_value = LibGtk.recent_manager_add_full(to_unsafe.as(LibGtk::RecentManager*), uri.to_unsafe, recent_data.to_unsafe.as(LibGtk::RecentData*))
      __return_value
    end

    def add_item(uri)
      __return_value = LibGtk.recent_manager_add_item(to_unsafe.as(LibGtk::RecentManager*), uri.to_unsafe)
      __return_value
    end

    def items
      __return_value = LibGtk.recent_manager_get_items(to_unsafe.as(LibGtk::RecentManager*))
      GLib::ListIterator(Gtk::RecentInfo, LibGtk::RecentInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def has_item(uri)
      __return_value = LibGtk.recent_manager_has_item(to_unsafe.as(LibGtk::RecentManager*), uri.to_unsafe)
      __return_value
    end

    def lookup_item(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_manager_lookup_item(to_unsafe.as(LibGtk::RecentManager*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      Gtk::RecentInfo.new(__return_value) if __return_value
    end

    def move_item(uri, new_uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_manager_move_item(to_unsafe.as(LibGtk::RecentManager*), uri.to_unsafe, new_uri ? new_uri.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def purge_items
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_manager_purge_items(to_unsafe.as(LibGtk::RecentManager*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_item(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_manager_remove_item(to_unsafe.as(LibGtk::RecentManager*), uri.to_unsafe, pointerof(__error))
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

