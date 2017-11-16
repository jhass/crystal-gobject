require "./scrolled_window"

module Gtk
  class PlacesSidebar < ScrolledWindow
    @pointer : Void*
    def initialize(pointer : LibGtk::PlacesSidebar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PlacesSidebar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def local_only
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "local_only", gvalue)
      gvalue.boolean
    end

    def location
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "location", gvalue)
      gvalue
    end

    def open_flags
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "open_flags", gvalue)
      gvalue.enum
    end

    def populate_all
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "populate_all", gvalue)
      gvalue.boolean
    end

    def show_connect_to_server
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_connect_to_server", gvalue)
      gvalue.boolean
    end

    def show_desktop
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_desktop", gvalue)
      gvalue.boolean
    end

    def show_enter_location
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_enter_location", gvalue)
      gvalue.boolean
    end

    def show_other_locations
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_other_locations", gvalue)
      gvalue.boolean
    end

    def show_recent
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_recent", gvalue)
      gvalue.boolean
    end

    def show_starred_location
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_starred_location", gvalue)
      gvalue.boolean
    end

    def show_trash
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_trash", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.places_sidebar_new
      cast Gtk::Widget.new(__return_value)
    end

    def add_shortcut(location)
      LibGtk.places_sidebar_add_shortcut(@pointer.as(LibGtk::PlacesSidebar*), location.to_unsafe.as(LibGio::File*))
      nil
    end

    def local_only
      __return_value = LibGtk.places_sidebar_get_local_only(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value
    end

    def location
      __return_value = LibGtk.places_sidebar_get_location(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value if __return_value
    end

    def nth_bookmark(n)
      __return_value = LibGtk.places_sidebar_get_nth_bookmark(@pointer.as(LibGtk::PlacesSidebar*), Int32.new(n))
      __return_value if __return_value
    end

    def open_flags
      __return_value = LibGtk.places_sidebar_get_open_flags(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_connect_to_server
      __return_value = LibGtk.places_sidebar_get_show_connect_to_server(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_desktop
      __return_value = LibGtk.places_sidebar_get_show_desktop(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_enter_location
      __return_value = LibGtk.places_sidebar_get_show_enter_location(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_other_locations
      __return_value = LibGtk.places_sidebar_get_show_other_locations(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_recent
      __return_value = LibGtk.places_sidebar_get_show_recent(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_starred_location
      __return_value = LibGtk.places_sidebar_get_show_starred_location(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_trash
      __return_value = LibGtk.places_sidebar_get_show_trash(@pointer.as(LibGtk::PlacesSidebar*))
      __return_value
    end

    def list_shortcuts
      __return_value = LibGtk.places_sidebar_list_shortcuts(@pointer.as(LibGtk::PlacesSidebar*))
      GLib::SListIterator(Gio::File, LibGio::File*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def remove_shortcut(location)
      LibGtk.places_sidebar_remove_shortcut(@pointer.as(LibGtk::PlacesSidebar*), location.to_unsafe.as(LibGio::File*))
      nil
    end

    def set_drop_targets_visible(visible, context)
      LibGtk.places_sidebar_set_drop_targets_visible(@pointer.as(LibGtk::PlacesSidebar*), visible, context.to_unsafe.as(LibGdk::DragContext*))
      nil
    end

    def local_only=(local_only)
      LibGtk.places_sidebar_set_local_only(@pointer.as(LibGtk::PlacesSidebar*), local_only)
      nil
    end

    def location=(location)
      LibGtk.places_sidebar_set_location(@pointer.as(LibGtk::PlacesSidebar*), location ? location.to_unsafe.as(LibGio::File*) : nil)
      nil
    end

    def open_flags=(flags : Gtk::PlacesOpenFlags)
      LibGtk.places_sidebar_set_open_flags(@pointer.as(LibGtk::PlacesSidebar*), flags)
      nil
    end

    def show_connect_to_server=(show_connect_to_server)
      LibGtk.places_sidebar_set_show_connect_to_server(@pointer.as(LibGtk::PlacesSidebar*), show_connect_to_server)
      nil
    end

    def show_desktop=(show_desktop)
      LibGtk.places_sidebar_set_show_desktop(@pointer.as(LibGtk::PlacesSidebar*), show_desktop)
      nil
    end

    def show_enter_location=(show_enter_location)
      LibGtk.places_sidebar_set_show_enter_location(@pointer.as(LibGtk::PlacesSidebar*), show_enter_location)
      nil
    end

    def show_other_locations=(show_other_locations)
      LibGtk.places_sidebar_set_show_other_locations(@pointer.as(LibGtk::PlacesSidebar*), show_other_locations)
      nil
    end

    def show_recent=(show_recent)
      LibGtk.places_sidebar_set_show_recent(@pointer.as(LibGtk::PlacesSidebar*), show_recent)
      nil
    end

    def show_starred_location=(show_starred_location)
      LibGtk.places_sidebar_set_show_starred_location(@pointer.as(LibGtk::PlacesSidebar*), show_starred_location)
      nil
    end

    def show_trash=(show_trash)
      LibGtk.places_sidebar_set_show_trash(@pointer.as(LibGtk::PlacesSidebar*), show_trash)
      nil
    end

    alias DragActionAskSignal = PlacesSidebar, Int32 -> Int32
    def on_drag_action_ask(&__block : DragActionAskSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::Int32*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), _arg1)
       Int32.new(__return_value)
      }
      connect("drag-action-ask", __callback)
    end

    alias DragActionRequestedSignal = PlacesSidebar, Gdk::DragContext, Gio::File, Void* -> Int32
    def on_drag_action_requested(&__block : DragActionRequestedSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGdk::DragContext**, _arg2 : LibGtk::LibGio::File*, _arg3 : LibGtk::Void***) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), Gdk::DragContext.new(_arg1), _arg2, GLib::ListIterator(Gio::File, LibGio::File*).new(GLib::SList.new(_arg3.as(LibGLib::List*))))
       Int32.new(__return_value)
      }
      connect("drag-action-requested", __callback)
    end

    alias DragPerformDropSignal = PlacesSidebar, Gio::File, Void*, Int32 ->
    def on_drag_perform_drop(&__block : DragPerformDropSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGio::File*, _arg2 : LibGtk::Void***, _arg3 : LibGtk::Int32*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), _arg1, GLib::ListIterator(Gio::File, LibGio::File*).new(GLib::SList.new(_arg2.as(LibGLib::List*))), _arg3)
       __return_value
      }
      connect("drag-perform-drop", __callback)
    end

    alias MountSignal = PlacesSidebar, Gio::MountOperation ->
    def on_mount(&__block : MountSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGio::MountOperation**) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), Gio::MountOperation.new(_arg1))
       __return_value
      }
      connect("mount", __callback)
    end

    alias OpenLocationSignal = PlacesSidebar, Gio::File, Gtk::PlacesOpenFlags ->
    def on_open_location(&__block : OpenLocationSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGio::File*, _arg2 : LibGtk::LibGtk::PlacesOpenFlags*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("open-location", __callback)
    end

    alias PopulatePopupSignal = PlacesSidebar, Gtk::Widget, Gio::File, Gio::Volume ->
    def on_populate_popup(&__block : PopulatePopupSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGtk::Widget**, _arg2 : LibGtk::LibGio::File*, _arg3 : LibGtk::LibGio::Volume*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), Gtk::Widget.new(_arg1), _arg2, _arg3)
       __return_value
      }
      connect("populate-popup", __callback)
    end

    alias ShowConnectToServerSignal = PlacesSidebar ->
    def on_show_connect_to_server(&__block : ShowConnectToServerSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0))
       __return_value
      }
      connect("show-connect-to-server", __callback)
    end

    alias ShowEnterLocationSignal = PlacesSidebar ->
    def on_show_enter_location(&__block : ShowEnterLocationSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0))
       __return_value
      }
      connect("show-enter-location", __callback)
    end

    alias ShowErrorMessageSignal = PlacesSidebar, String, String ->
    def on_show_error_message(&__block : ShowErrorMessageSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::UInt8**, _arg2 : LibGtk::UInt8**) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), (raise "Expected string but got null" unless _arg2; ::String.new(_arg2)))
       __return_value
      }
      connect("show-error-message", __callback)
    end

    alias ShowOtherLocationsSignal = PlacesSidebar ->
    def on_show_other_locations(&__block : ShowOtherLocationsSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0))
       __return_value
      }
      connect("show-other-locations", __callback)
    end

    alias ShowOtherLocationsWithFlagsSignal = PlacesSidebar, Gtk::PlacesOpenFlags ->
    def on_show_other_locations_with_flags(&__block : ShowOtherLocationsWithFlagsSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGtk::PlacesOpenFlags*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), _arg1)
       __return_value
      }
      connect("show-other-locations-with-flags", __callback)
    end

    alias ShowStarredLocationSignal = PlacesSidebar, Gtk::PlacesOpenFlags ->
    def on_show_starred_location(&__block : ShowStarredLocationSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGtk::PlacesOpenFlags*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), _arg1)
       __return_value
      }
      connect("show-starred-location", __callback)
    end

    alias UnmountSignal = PlacesSidebar, Gio::MountOperation ->
    def on_unmount(&__block : UnmountSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGio::MountOperation**) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), Gio::MountOperation.new(_arg1))
       __return_value
      }
      connect("unmount", __callback)
    end

  end
end

