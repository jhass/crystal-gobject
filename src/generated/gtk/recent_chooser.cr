module Gtk
  module RecentChooser
    def add_filter(filter)
      __return_value = LibGtk.recent_chooser_add_filter((to_unsafe as LibGtk::RecentChooser*), (filter.to_unsafe as LibGtk::RecentFilter*))
      __return_value
    end

    def current_item
      __return_value = LibGtk.recent_chooser_get_current_item((to_unsafe as LibGtk::RecentChooser*))
      Gtk::RecentInfo.new(__return_value)
    end

    def current_uri
      __return_value = LibGtk.recent_chooser_get_current_uri((to_unsafe as LibGtk::RecentChooser*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def filter
      __return_value = LibGtk.recent_chooser_get_filter((to_unsafe as LibGtk::RecentChooser*))
      Gtk::RecentFilter.new(__return_value)
    end

    def items
      __return_value = LibGtk.recent_chooser_get_items((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def limit
      __return_value = LibGtk.recent_chooser_get_limit((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def local_only
      __return_value = LibGtk.recent_chooser_get_local_only((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def select_multiple
      __return_value = LibGtk.recent_chooser_get_select_multiple((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def show_icons
      __return_value = LibGtk.recent_chooser_get_show_icons((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def show_not_found
      __return_value = LibGtk.recent_chooser_get_show_not_found((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def show_private
      __return_value = LibGtk.recent_chooser_get_show_private((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def show_tips
      __return_value = LibGtk.recent_chooser_get_show_tips((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def sort_type
      __return_value = LibGtk.recent_chooser_get_sort_type((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def uris(length)
      __return_value = LibGtk.recent_chooser_get_uris((to_unsafe as LibGtk::RecentChooser*), UInt64.cast(length))
      PointerIterator.new(__return_value) {|__item_29| raise "Expected string but got null" unless __item_29; String.new(__item_29) }
    end

    def list_filters
      __return_value = LibGtk.recent_chooser_list_filters((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def remove_filter(filter)
      __return_value = LibGtk.recent_chooser_remove_filter((to_unsafe as LibGtk::RecentChooser*), (filter.to_unsafe as LibGtk::RecentFilter*))
      __return_value
    end

    def select_all
      __return_value = LibGtk.recent_chooser_select_all((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def select_uri(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_chooser_select_uri((to_unsafe as LibGtk::RecentChooser*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_current_uri(uri)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.recent_chooser_set_current_uri((to_unsafe as LibGtk::RecentChooser*), uri, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def filter=(filter)
      __return_value = LibGtk.recent_chooser_set_filter((to_unsafe as LibGtk::RecentChooser*), filter && (filter.to_unsafe as LibGtk::RecentFilter*))
      __return_value
    end

    def limit=(limit)
      __return_value = LibGtk.recent_chooser_set_limit((to_unsafe as LibGtk::RecentChooser*), Int32.cast(limit))
      __return_value
    end

    def local_only=(local_only)
      __return_value = LibGtk.recent_chooser_set_local_only((to_unsafe as LibGtk::RecentChooser*), Bool.cast(local_only))
      __return_value
    end

    def select_multiple=(select_multiple)
      __return_value = LibGtk.recent_chooser_set_select_multiple((to_unsafe as LibGtk::RecentChooser*), Bool.cast(select_multiple))
      __return_value
    end

    def show_icons=(show_icons)
      __return_value = LibGtk.recent_chooser_set_show_icons((to_unsafe as LibGtk::RecentChooser*), Bool.cast(show_icons))
      __return_value
    end

    def show_not_found=(show_not_found)
      __return_value = LibGtk.recent_chooser_set_show_not_found((to_unsafe as LibGtk::RecentChooser*), Bool.cast(show_not_found))
      __return_value
    end

    def show_private=(show_private)
      __return_value = LibGtk.recent_chooser_set_show_private((to_unsafe as LibGtk::RecentChooser*), Bool.cast(show_private))
      __return_value
    end

    def show_tips=(show_tips)
      __return_value = LibGtk.recent_chooser_set_show_tips((to_unsafe as LibGtk::RecentChooser*), Bool.cast(show_tips))
      __return_value
    end

    def set_sort_func(sort_func : LibGtk::RecentSortFunc, sort_data, data_destroy : LibGLib::DestroyNotify?)
      __return_value = LibGtk.recent_chooser_set_sort_func((to_unsafe as LibGtk::RecentChooser*), sort_func, sort_data && sort_data, data_destroy && data_destroy)
      __return_value
    end

    def sort_type=(sort_type)
      __return_value = LibGtk.recent_chooser_set_sort_type((to_unsafe as LibGtk::RecentChooser*), sort_type)
      __return_value
    end

    def unselect_all
      __return_value = LibGtk.recent_chooser_unselect_all((to_unsafe as LibGtk::RecentChooser*))
      __return_value
    end

    def unselect_uri(uri)
      __return_value = LibGtk.recent_chooser_unselect_uri((to_unsafe as LibGtk::RecentChooser*), uri)
      __return_value
    end

  end
end

