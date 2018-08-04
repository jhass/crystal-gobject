module Gtk
  module RecentChooser
    def add_filter(filter)
      LibGtk.recent_chooser_add_filter(@pointer.as(LibGtk::RecentChooser*), filter.to_unsafe.as(LibGtk::RecentFilter*))
      nil
    end

    def current_item
      __return_value = LibGtk.recent_chooser_get_current_item(@pointer.as(LibGtk::RecentChooser*))
      Gtk::RecentInfo.new(__return_value)
    end

    def current_uri
      __return_value = LibGtk.recent_chooser_get_current_uri(@pointer.as(LibGtk::RecentChooser*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def filter
      __return_value = LibGtk.recent_chooser_get_filter(@pointer.as(LibGtk::RecentChooser*))
      Gtk::RecentFilter.new(__return_value)
    end

    def items
      __return_value = LibGtk.recent_chooser_get_items(@pointer.as(LibGtk::RecentChooser*))
      GLib::ListIterator(Gtk::RecentInfo, LibGtk::RecentInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def limit
      __return_value = LibGtk.recent_chooser_get_limit(@pointer.as(LibGtk::RecentChooser*))
      __return_value
    end

    def local_only
      __return_value = LibGtk.recent_chooser_get_local_only(@pointer.as(LibGtk::RecentChooser*))
      __return_value
    end

    def select_multiple
      __return_value = LibGtk.recent_chooser_get_select_multiple(@pointer.as(LibGtk::RecentChooser*))
      __return_value
    end

    def show_icons
      __return_value = LibGtk.recent_chooser_get_show_icons(@pointer.as(LibGtk::RecentChooser*))
      __return_value
    end

    def show_not_found
      __return_value = LibGtk.recent_chooser_get_show_not_found(@pointer.as(LibGtk::RecentChooser*))
      __return_value
    end

    def show_private
      __return_value = LibGtk.recent_chooser_get_show_private(@pointer.as(LibGtk::RecentChooser*))
      __return_value
    end

    def show_tips
      __return_value = LibGtk.recent_chooser_get_show_tips(@pointer.as(LibGtk::RecentChooser*))
      __return_value
    end

    def sort_type
      __return_value = LibGtk.recent_chooser_get_sort_type(@pointer.as(LibGtk::RecentChooser*))
      __return_value
    end

    def uris(length)
      __return_value = LibGtk.recent_chooser_get_uris(@pointer.as(LibGtk::RecentChooser*), length)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def list_filters
      __return_value = LibGtk.recent_chooser_list_filters(@pointer.as(LibGtk::RecentChooser*))
      GLib::SListIterator(Gtk::RecentFilter, LibGtk::RecentFilter**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def remove_filter(filter)
      LibGtk.recent_chooser_remove_filter(@pointer.as(LibGtk::RecentChooser*), filter.to_unsafe.as(LibGtk::RecentFilter*))
      nil
    end

    def select_all
      LibGtk.recent_chooser_select_all(@pointer.as(LibGtk::RecentChooser*))
      nil
    end

    def select_uri(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_chooser_select_uri(@pointer.as(LibGtk::RecentChooser*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_current_uri(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_chooser_set_current_uri(@pointer.as(LibGtk::RecentChooser*), uri.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def filter=(filter)
      LibGtk.recent_chooser_set_filter(@pointer.as(LibGtk::RecentChooser*), filter ? filter.to_unsafe.as(LibGtk::RecentFilter*) : nil)
      nil
    end

    def limit=(limit)
      LibGtk.recent_chooser_set_limit(@pointer.as(LibGtk::RecentChooser*), Int32.new(limit))
      nil
    end

    def local_only=(local_only)
      LibGtk.recent_chooser_set_local_only(@pointer.as(LibGtk::RecentChooser*), local_only)
      nil
    end

    def select_multiple=(select_multiple)
      LibGtk.recent_chooser_set_select_multiple(@pointer.as(LibGtk::RecentChooser*), select_multiple)
      nil
    end

    def show_icons=(show_icons)
      LibGtk.recent_chooser_set_show_icons(@pointer.as(LibGtk::RecentChooser*), show_icons)
      nil
    end

    def show_not_found=(show_not_found)
      LibGtk.recent_chooser_set_show_not_found(@pointer.as(LibGtk::RecentChooser*), show_not_found)
      nil
    end

    def show_private=(show_private)
      LibGtk.recent_chooser_set_show_private(@pointer.as(LibGtk::RecentChooser*), show_private)
      nil
    end

    def show_tips=(show_tips)
      LibGtk.recent_chooser_set_show_tips(@pointer.as(LibGtk::RecentChooser*), show_tips)
      nil
    end

    def set_sort_func(sort_func, sort_data, data_destroy)
      LibGtk.recent_chooser_set_sort_func(@pointer.as(LibGtk::RecentChooser*), sort_func, sort_data ? sort_data : nil, data_destroy ? data_destroy : nil)
      nil
    end

    def sort_type=(sort_type : Gtk::RecentSortType)
      LibGtk.recent_chooser_set_sort_type(@pointer.as(LibGtk::RecentChooser*), sort_type)
      nil
    end

    def unselect_all
      LibGtk.recent_chooser_unselect_all(@pointer.as(LibGtk::RecentChooser*))
      nil
    end

    def unselect_uri(uri)
      LibGtk.recent_chooser_unselect_uri(@pointer.as(LibGtk::RecentChooser*), uri.to_unsafe)
      nil
    end

    alias ItemActivatedSignal = RecentChooser ->
    def on_item_activated(&__block : ItemActivatedSignal)
      __callback = ->(_arg0 : LibGtk::RecentChooser*) {
       __return_value = __block.call(RecentChooser.new(_arg0))
       __return_value
      }
      connect("item-activated", __callback)
    end

    alias SelectionChangedSignal = RecentChooser ->
    def on_selection_changed(&__block : SelectionChangedSignal)
      __callback = ->(_arg0 : LibGtk::RecentChooser*) {
       __return_value = __block.call(RecentChooser.new(_arg0))
       __return_value
      }
      connect("selection-changed", __callback)
    end

  end
end

