require "./scrolled_window"

module Gtk
  class PlacesSidebar < ScrolledWindow
    def initialize(@gtk_places_sidebar)
    end

    def to_unsafe
      @gtk_places_sidebar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable










    def self.new_internal
      __return_value = LibGtk.places_sidebar_new
      Gtk::Widget.new(__return_value)
    end

    def add_shortcut(location)
      __return_value = LibGtk.places_sidebar_add_shortcut((to_unsafe as LibGtk::PlacesSidebar*), (location.to_unsafe as LibGio::File*))
      __return_value
    end

    def local_only
      __return_value = LibGtk.places_sidebar_get_local_only((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def location
      __return_value = LibGtk.places_sidebar_get_location((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def nth_bookmark(n)
      __return_value = LibGtk.places_sidebar_get_nth_bookmark((to_unsafe as LibGtk::PlacesSidebar*), Int32.new(n))
      __return_value
    end

    def open_flags
      __return_value = LibGtk.places_sidebar_get_open_flags((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_connect_to_server
      __return_value = LibGtk.places_sidebar_get_show_connect_to_server((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_desktop
      __return_value = LibGtk.places_sidebar_get_show_desktop((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_enter_location
      __return_value = LibGtk.places_sidebar_get_show_enter_location((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_other_locations
      __return_value = LibGtk.places_sidebar_get_show_other_locations((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_recent
      __return_value = LibGtk.places_sidebar_get_show_recent((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_trash
      __return_value = LibGtk.places_sidebar_get_show_trash((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def list_shortcuts
      __return_value = LibGtk.places_sidebar_list_shortcuts((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def remove_shortcut(location)
      __return_value = LibGtk.places_sidebar_remove_shortcut((to_unsafe as LibGtk::PlacesSidebar*), (location.to_unsafe as LibGio::File*))
      __return_value
    end

    def set_drop_targets_visible(visible, context)
      __return_value = LibGtk.places_sidebar_set_drop_targets_visible((to_unsafe as LibGtk::PlacesSidebar*), visible, (context.to_unsafe as LibGdk::DragContext*))
      __return_value
    end

    def local_only=(local_only)
      __return_value = LibGtk.places_sidebar_set_local_only((to_unsafe as LibGtk::PlacesSidebar*), local_only)
      __return_value
    end

    def location=(location)
      __return_value = LibGtk.places_sidebar_set_location((to_unsafe as LibGtk::PlacesSidebar*), location && (location.to_unsafe as LibGio::File*))
      __return_value
    end

    def open_flags=(flags)
      __return_value = LibGtk.places_sidebar_set_open_flags((to_unsafe as LibGtk::PlacesSidebar*), flags)
      __return_value
    end

    def show_connect_to_server=(show_connect_to_server)
      __return_value = LibGtk.places_sidebar_set_show_connect_to_server((to_unsafe as LibGtk::PlacesSidebar*), show_connect_to_server)
      __return_value
    end

    def show_desktop=(show_desktop)
      __return_value = LibGtk.places_sidebar_set_show_desktop((to_unsafe as LibGtk::PlacesSidebar*), show_desktop)
      __return_value
    end

    def show_enter_location=(show_enter_location)
      __return_value = LibGtk.places_sidebar_set_show_enter_location((to_unsafe as LibGtk::PlacesSidebar*), show_enter_location)
      __return_value
    end

    def show_other_locations=(show_other_locations)
      __return_value = LibGtk.places_sidebar_set_show_other_locations((to_unsafe as LibGtk::PlacesSidebar*), show_other_locations)
      __return_value
    end

    def show_recent=(show_recent)
      __return_value = LibGtk.places_sidebar_set_show_recent((to_unsafe as LibGtk::PlacesSidebar*), show_recent)
      __return_value
    end

    def show_trash=(show_trash)
      __return_value = LibGtk.places_sidebar_set_show_trash((to_unsafe as LibGtk::PlacesSidebar*), show_trash)
      __return_value
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
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGdk::DragContext*, _arg2 : LibGtk::LibGio::File*, _arg3 : LibGtk::Void***) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), Gdk::DragContext.new(_arg1), _arg2, _arg3)
       Int32.new(__return_value)
      }
      connect("drag-action-requested", __callback)
    end

    alias DragPerformDropSignal = PlacesSidebar, Gio::File, Void*, Int32 -> 
    def on_drag_perform_drop(&__block : DragPerformDropSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGio::File*, _arg2 : LibGtk::Void***, _arg3 : LibGtk::Int32*) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("drag-perform-drop", __callback)
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
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::LibGtk::Widget*, _arg2 : LibGtk::LibGio::File*, _arg3 : LibGtk::LibGio::Volume*) {
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

    alias ShowErrorMessageSignal = PlacesSidebar, UInt8, UInt8 -> 
    def on_show_error_message(&__block : ShowErrorMessageSignal)
      __callback = ->(_arg0 : LibGtk::PlacesSidebar*, _arg1 : LibGtk::UInt8**, _arg2 : LibGtk::UInt8**) {
       __return_value = __block.call(PlacesSidebar.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)), (raise "Expected string but got null" unless _arg2; String.new(_arg2)))
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

  end
end

