require "./container"

module Gtk
  class Notebook < Container
    def initialize(@gtk_notebook)
    end

    def to_unsafe
      @gtk_notebook.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable







    def self.new_internal
      __return_value = LibGtk.notebook_new
      Gtk::Widget.new(__return_value)
    end

    def append_page(child, tab_label)
      __return_value = LibGtk.notebook_append_page((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), tab_label && (tab_label.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def append_page_menu(child, tab_label, menu_label)
      __return_value = LibGtk.notebook_append_page_menu((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), tab_label && (tab_label.to_unsafe as LibGtk::Widget*), menu_label && (menu_label.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def detach_tab(child)
      __return_value = LibGtk.notebook_detach_tab((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def action_widget(pack_type)
      __return_value = LibGtk.notebook_get_action_widget((to_unsafe as LibGtk::Notebook*), pack_type)
      Gtk::Widget.new(__return_value)
    end

    def current_page
      __return_value = LibGtk.notebook_get_current_page((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def group_name
      __return_value = LibGtk.notebook_get_group_name((to_unsafe as LibGtk::Notebook*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def menu_label(child)
      __return_value = LibGtk.notebook_get_menu_label((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*))
      Gtk::Widget.new(__return_value)
    end

    def menu_label_text(child)
      __return_value = LibGtk.notebook_get_menu_label_text((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def n_pages
      __return_value = LibGtk.notebook_get_n_pages((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def nth_page(page_num)
      __return_value = LibGtk.notebook_get_nth_page((to_unsafe as LibGtk::Notebook*), Int32.new(page_num))
      Gtk::Widget.new(__return_value)
    end

    def scrollable
      __return_value = LibGtk.notebook_get_scrollable((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def show_border
      __return_value = LibGtk.notebook_get_show_border((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def show_tabs
      __return_value = LibGtk.notebook_get_show_tabs((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def tab_detachable(child)
      __return_value = LibGtk.notebook_get_tab_detachable((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def tab_hborder
      __return_value = LibGtk.notebook_get_tab_hborder((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def tab_label(child)
      __return_value = LibGtk.notebook_get_tab_label((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*))
      Gtk::Widget.new(__return_value)
    end

    def tab_label_text(child)
      __return_value = LibGtk.notebook_get_tab_label_text((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def tab_pos
      __return_value = LibGtk.notebook_get_tab_pos((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def tab_reorderable(child)
      __return_value = LibGtk.notebook_get_tab_reorderable((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def tab_vborder
      __return_value = LibGtk.notebook_get_tab_vborder((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def insert_page(child, tab_label, position)
      __return_value = LibGtk.notebook_insert_page((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), tab_label && (tab_label.to_unsafe as LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def insert_page_menu(child, tab_label, menu_label, position)
      __return_value = LibGtk.notebook_insert_page_menu((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), tab_label && (tab_label.to_unsafe as LibGtk::Widget*), menu_label && (menu_label.to_unsafe as LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def next_page
      __return_value = LibGtk.notebook_next_page((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def page_num(child)
      __return_value = LibGtk.notebook_page_num((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def popup_disable
      __return_value = LibGtk.notebook_popup_disable((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def popup_enable
      __return_value = LibGtk.notebook_popup_enable((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def prepend_page(child, tab_label)
      __return_value = LibGtk.notebook_prepend_page((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), tab_label && (tab_label.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def prepend_page_menu(child, tab_label, menu_label)
      __return_value = LibGtk.notebook_prepend_page_menu((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), tab_label && (tab_label.to_unsafe as LibGtk::Widget*), menu_label && (menu_label.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def prev_page
      __return_value = LibGtk.notebook_prev_page((to_unsafe as LibGtk::Notebook*))
      __return_value
    end

    def remove_page(page_num)
      __return_value = LibGtk.notebook_remove_page((to_unsafe as LibGtk::Notebook*), Int32.new(page_num))
      __return_value
    end

    def reorder_child(child, position)
      __return_value = LibGtk.notebook_reorder_child((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def set_action_widget(widget, pack_type)
      __return_value = LibGtk.notebook_set_action_widget((to_unsafe as LibGtk::Notebook*), (widget.to_unsafe as LibGtk::Widget*), pack_type)
      __return_value
    end

    def current_page=(page_num)
      __return_value = LibGtk.notebook_set_current_page((to_unsafe as LibGtk::Notebook*), Int32.new(page_num))
      __return_value
    end

    def group_name=(group_name)
      __return_value = LibGtk.notebook_set_group_name((to_unsafe as LibGtk::Notebook*), group_name && group_name)
      __return_value
    end

    def set_menu_label(child, menu_label)
      __return_value = LibGtk.notebook_set_menu_label((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), menu_label && (menu_label.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def set_menu_label_text(child, menu_text)
      __return_value = LibGtk.notebook_set_menu_label_text((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), menu_text)
      __return_value
    end

    def scrollable=(scrollable)
      __return_value = LibGtk.notebook_set_scrollable((to_unsafe as LibGtk::Notebook*), scrollable)
      __return_value
    end

    def show_border=(show_border)
      __return_value = LibGtk.notebook_set_show_border((to_unsafe as LibGtk::Notebook*), show_border)
      __return_value
    end

    def show_tabs=(show_tabs)
      __return_value = LibGtk.notebook_set_show_tabs((to_unsafe as LibGtk::Notebook*), show_tabs)
      __return_value
    end

    def set_tab_detachable(child, detachable)
      __return_value = LibGtk.notebook_set_tab_detachable((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), detachable)
      __return_value
    end

    def set_tab_label(child, tab_label)
      __return_value = LibGtk.notebook_set_tab_label((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), tab_label && (tab_label.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def set_tab_label_text(child, tab_text)
      __return_value = LibGtk.notebook_set_tab_label_text((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), tab_text)
      __return_value
    end

    def tab_pos=(pos)
      __return_value = LibGtk.notebook_set_tab_pos((to_unsafe as LibGtk::Notebook*), pos)
      __return_value
    end

    def set_tab_reorderable(child, reorderable)
      __return_value = LibGtk.notebook_set_tab_reorderable((to_unsafe as LibGtk::Notebook*), (child.to_unsafe as LibGtk::Widget*), reorderable)
      __return_value
    end

    alias ChangeCurrentPageSignal = Notebook, Int32 -> Bool
    def on_change_current_page(&__block : ChangeCurrentPageSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::Int32*) {
       __return_value = __block.call(Notebook.new(_arg0), _arg1)
       __return_value
      }
      connect("change-current-page", __callback)
    end

    alias CreateWindowSignal = Notebook, Gtk::Widget, Int32, Int32 -> Gtk::Notebook
    def on_create_window(&__block : CreateWindowSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Int32*) {
       __return_value = __block.call(Notebook.new(_arg0), Gtk::Widget.new(_arg1), _arg2, _arg3)
       __return_value
      }
      connect("create-window", __callback)
    end

    alias FocusTabSignal = Notebook, Gtk::NotebookTab -> Bool
    def on_focus_tab(&__block : FocusTabSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::NotebookTab*) {
       __return_value = __block.call(Notebook.new(_arg0), _arg1)
       __return_value
      }
      connect("focus-tab", __callback)
    end

    alias MoveFocusOutSignal = Notebook, Gtk::DirectionType -> 
    def on_move_focus_out(&__block : MoveFocusOutSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::DirectionType*) {
       __return_value = __block.call(Notebook.new(_arg0), _arg1)
       __return_value
      }
      connect("move-focus-out", __callback)
    end

    alias PageAddedSignal = Notebook, Gtk::Widget, UInt32 -> 
    def on_page_added(&__block : PageAddedSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget*, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(Notebook.new(_arg0), Gtk::Widget.new(_arg1), _arg2)
       __return_value
      }
      connect("page-added", __callback)
    end

    alias PageRemovedSignal = Notebook, Gtk::Widget, UInt32 -> 
    def on_page_removed(&__block : PageRemovedSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget*, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(Notebook.new(_arg0), Gtk::Widget.new(_arg1), _arg2)
       __return_value
      }
      connect("page-removed", __callback)
    end

    alias PageReorderedSignal = Notebook, Gtk::Widget, UInt32 -> 
    def on_page_reordered(&__block : PageReorderedSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget*, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(Notebook.new(_arg0), Gtk::Widget.new(_arg1), _arg2)
       __return_value
      }
      connect("page-reordered", __callback)
    end

    alias ReorderTabSignal = Notebook, Gtk::DirectionType, Bool -> Bool
    def on_reorder_tab(&__block : ReorderTabSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::DirectionType*, _arg2 : LibGtk::Bool*) {
       __return_value = __block.call(Notebook.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("reorder-tab", __callback)
    end

    alias SelectPageSignal = Notebook, Bool -> Bool
    def on_select_page(&__block : SelectPageSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(Notebook.new(_arg0), _arg1)
       __return_value
      }
      connect("select-page", __callback)
    end

    alias SwitchPageSignal = Notebook, Gtk::Widget, UInt32 -> 
    def on_switch_page(&__block : SwitchPageSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget*, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(Notebook.new(_arg0), Gtk::Widget.new(_arg1), _arg2)
       __return_value
      }
      connect("switch-page", __callback)
    end

  end
end

