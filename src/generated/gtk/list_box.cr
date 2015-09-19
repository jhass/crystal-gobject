require "./container"

module Gtk
  class ListBox < Container
    def initialize @gtk_list_box
    end

    def to_unsafe
      @gtk_list_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable


    def self.new_internal
      __return_value = LibGtk.list_box_new
      Gtk::Widget.new(__return_value)
    end

    def bind_model(model, create_widget_func : LibGtk::ListBoxCreateWidgetFunc, user_data, user_data_free_func : LibGLib::DestroyNotify)
      __return_value = LibGtk.list_box_bind_model((to_unsafe as LibGtk::ListBox*), model && (model.to_unsafe as LibGio::ListModel*), create_widget_func, user_data, user_data_free_func)
      __return_value
    end

    def drag_highlight_row(row)
      __return_value = LibGtk.list_box_drag_highlight_row((to_unsafe as LibGtk::ListBox*), (row.to_unsafe as LibGtk::ListBoxRow*))
      __return_value
    end

    def drag_unhighlight_row
      __return_value = LibGtk.list_box_drag_unhighlight_row((to_unsafe as LibGtk::ListBox*))
      __return_value
    end

    def activate_on_single_click
      __return_value = LibGtk.list_box_get_activate_on_single_click((to_unsafe as LibGtk::ListBox*))
      __return_value
    end

    def adjustment
      __return_value = LibGtk.list_box_get_adjustment((to_unsafe as LibGtk::ListBox*))
      Gtk::Adjustment.new(__return_value)
    end

    def row_at_index(index)
      __return_value = LibGtk.list_box_get_row_at_index((to_unsafe as LibGtk::ListBox*), Int32.new(index))
      Gtk::ListBoxRow.new(__return_value)
    end

    def row_at_y(y)
      __return_value = LibGtk.list_box_get_row_at_y((to_unsafe as LibGtk::ListBox*), Int32.new(y))
      Gtk::ListBoxRow.new(__return_value)
    end

    def selected_row
      __return_value = LibGtk.list_box_get_selected_row((to_unsafe as LibGtk::ListBox*))
      Gtk::ListBoxRow.new(__return_value)
    end

    def selected_rows
      __return_value = LibGtk.list_box_get_selected_rows((to_unsafe as LibGtk::ListBox*))
      __return_value
    end

    def selection_mode
      __return_value = LibGtk.list_box_get_selection_mode((to_unsafe as LibGtk::ListBox*))
      __return_value
    end

    def insert(child, position)
      __return_value = LibGtk.list_box_insert((to_unsafe as LibGtk::ListBox*), (child.to_unsafe as LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def invalidate_filter
      __return_value = LibGtk.list_box_invalidate_filter((to_unsafe as LibGtk::ListBox*))
      __return_value
    end

    def invalidate_headers
      __return_value = LibGtk.list_box_invalidate_headers((to_unsafe as LibGtk::ListBox*))
      __return_value
    end

    def invalidate_sort
      __return_value = LibGtk.list_box_invalidate_sort((to_unsafe as LibGtk::ListBox*))
      __return_value
    end

    def prepend(child)
      __return_value = LibGtk.list_box_prepend((to_unsafe as LibGtk::ListBox*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def select_all
      __return_value = LibGtk.list_box_select_all((to_unsafe as LibGtk::ListBox*))
      __return_value
    end

    def select_row(row)
      __return_value = LibGtk.list_box_select_row((to_unsafe as LibGtk::ListBox*), row && (row.to_unsafe as LibGtk::ListBoxRow*))
      __return_value
    end

    def selected_foreach(func : LibGtk::ListBoxForeachFunc, data)
      __return_value = LibGtk.list_box_selected_foreach((to_unsafe as LibGtk::ListBox*), func, data)
      __return_value
    end

    def activate_on_single_click=(single)
      __return_value = LibGtk.list_box_set_activate_on_single_click((to_unsafe as LibGtk::ListBox*), Bool.new(single))
      __return_value
    end

    def adjustment=(adjustment)
      __return_value = LibGtk.list_box_set_adjustment((to_unsafe as LibGtk::ListBox*), adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def set_filter_func(filter_func : LibGtk::ListBoxFilterFunc?, user_data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.list_box_set_filter_func((to_unsafe as LibGtk::ListBox*), filter_func && filter_func, user_data, destroy)
      __return_value
    end

    def set_header_func(update_header : LibGtk::ListBoxUpdateHeaderFunc?, user_data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.list_box_set_header_func((to_unsafe as LibGtk::ListBox*), update_header && update_header, user_data, destroy)
      __return_value
    end

    def placeholder=(placeholder)
      __return_value = LibGtk.list_box_set_placeholder((to_unsafe as LibGtk::ListBox*), placeholder && (placeholder.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def selection_mode=(mode)
      __return_value = LibGtk.list_box_set_selection_mode((to_unsafe as LibGtk::ListBox*), mode)
      __return_value
    end

    def set_sort_func(sort_func : LibGtk::ListBoxSortFunc?, user_data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.list_box_set_sort_func((to_unsafe as LibGtk::ListBox*), sort_func && sort_func, user_data, destroy)
      __return_value
    end

    def unselect_all
      __return_value = LibGtk.list_box_unselect_all((to_unsafe as LibGtk::ListBox*))
      __return_value
    end

    def unselect_row(row)
      __return_value = LibGtk.list_box_unselect_row((to_unsafe as LibGtk::ListBox*), (row.to_unsafe as LibGtk::ListBoxRow*))
      __return_value
    end

  end
end

