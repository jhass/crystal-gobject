require "./container"

module Gtk
  class Notebook < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::Notebook*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Notebook*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def enable_popup
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "enable_popup", gvalue)
      gvalue.boolean
    end

    def group_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "group_name", gvalue)
      gvalue.string
    end

    def page
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "page", gvalue)
      gvalue
    end

    def scrollable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "scrollable", gvalue)
      gvalue.boolean
    end

    def show_border
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_border", gvalue)
      gvalue.boolean
    end

    def show_tabs
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_tabs", gvalue)
      gvalue.boolean
    end

    def tab_pos
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tab_pos", gvalue)
      gvalue.enum
    end

    def self.new : self
      __return_value = LibGtk.notebook_new
      cast Gtk::Widget.new(__return_value)
    end

    def append_page(child, tab_label)
      __return_value = LibGtk.notebook_append_page(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), tab_label ? tab_label.to_unsafe.as(LibGtk::Widget*) : nil)
      __return_value
    end

    def append_page_menu(child, tab_label, menu_label)
      __return_value = LibGtk.notebook_append_page_menu(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), tab_label ? tab_label.to_unsafe.as(LibGtk::Widget*) : nil, menu_label ? menu_label.to_unsafe.as(LibGtk::Widget*) : nil)
      __return_value
    end

    def detach_tab(child)
      LibGtk.notebook_detach_tab(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def action_widget(pack_type : Gtk::PackType)
      __return_value = LibGtk.notebook_get_action_widget(@pointer.as(LibGtk::Notebook*), pack_type)
      Gtk::Widget.new(__return_value) if __return_value
    end

    def current_page
      __return_value = LibGtk.notebook_get_current_page(@pointer.as(LibGtk::Notebook*))
      __return_value
    end

    def group_name
      __return_value = LibGtk.notebook_get_group_name(@pointer.as(LibGtk::Notebook*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def menu_label(child)
      __return_value = LibGtk.notebook_get_menu_label(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def menu_label_text(child)
      __return_value = LibGtk.notebook_get_menu_label_text(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def n_pages
      __return_value = LibGtk.notebook_get_n_pages(@pointer.as(LibGtk::Notebook*))
      __return_value
    end

    def nth_page(page_num)
      __return_value = LibGtk.notebook_get_nth_page(@pointer.as(LibGtk::Notebook*), Int32.new(page_num))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def scrollable
      __return_value = LibGtk.notebook_get_scrollable(@pointer.as(LibGtk::Notebook*))
      __return_value
    end

    def show_border
      __return_value = LibGtk.notebook_get_show_border(@pointer.as(LibGtk::Notebook*))
      __return_value
    end

    def show_tabs
      __return_value = LibGtk.notebook_get_show_tabs(@pointer.as(LibGtk::Notebook*))
      __return_value
    end

    def tab_detachable(child)
      __return_value = LibGtk.notebook_get_tab_detachable(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def tab_hborder
      __return_value = LibGtk.notebook_get_tab_hborder(@pointer.as(LibGtk::Notebook*))
      __return_value
    end

    def tab_label(child)
      __return_value = LibGtk.notebook_get_tab_label(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def tab_label_text(child)
      __return_value = LibGtk.notebook_get_tab_label_text(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def tab_pos
      __return_value = LibGtk.notebook_get_tab_pos(@pointer.as(LibGtk::Notebook*))
      __return_value
    end

    def tab_reorderable(child)
      __return_value = LibGtk.notebook_get_tab_reorderable(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def tab_vborder
      __return_value = LibGtk.notebook_get_tab_vborder(@pointer.as(LibGtk::Notebook*))
      __return_value
    end

    def insert_page(child, tab_label, position)
      __return_value = LibGtk.notebook_insert_page(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), tab_label ? tab_label.to_unsafe.as(LibGtk::Widget*) : nil, Int32.new(position))
      __return_value
    end

    def insert_page_menu(child, tab_label, menu_label, position)
      __return_value = LibGtk.notebook_insert_page_menu(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), tab_label ? tab_label.to_unsafe.as(LibGtk::Widget*) : nil, menu_label ? menu_label.to_unsafe.as(LibGtk::Widget*) : nil, Int32.new(position))
      __return_value
    end

    def next_page
      LibGtk.notebook_next_page(@pointer.as(LibGtk::Notebook*))
      nil
    end

    def page_num(child)
      __return_value = LibGtk.notebook_page_num(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def popup_disable
      LibGtk.notebook_popup_disable(@pointer.as(LibGtk::Notebook*))
      nil
    end

    def popup_enable
      LibGtk.notebook_popup_enable(@pointer.as(LibGtk::Notebook*))
      nil
    end

    def prepend_page(child, tab_label)
      __return_value = LibGtk.notebook_prepend_page(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), tab_label ? tab_label.to_unsafe.as(LibGtk::Widget*) : nil)
      __return_value
    end

    def prepend_page_menu(child, tab_label, menu_label)
      __return_value = LibGtk.notebook_prepend_page_menu(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), tab_label ? tab_label.to_unsafe.as(LibGtk::Widget*) : nil, menu_label ? menu_label.to_unsafe.as(LibGtk::Widget*) : nil)
      __return_value
    end

    def prev_page
      LibGtk.notebook_prev_page(@pointer.as(LibGtk::Notebook*))
      nil
    end

    def remove_page(page_num)
      LibGtk.notebook_remove_page(@pointer.as(LibGtk::Notebook*), Int32.new(page_num))
      nil
    end

    def reorder_child(child, position)
      LibGtk.notebook_reorder_child(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(position))
      nil
    end

    def set_action_widget(widget, pack_type : Gtk::PackType)
      LibGtk.notebook_set_action_widget(@pointer.as(LibGtk::Notebook*), widget.to_unsafe.as(LibGtk::Widget*), pack_type)
      nil
    end

    def current_page=(page_num)
      LibGtk.notebook_set_current_page(@pointer.as(LibGtk::Notebook*), Int32.new(page_num))
      nil
    end

    def group_name=(group_name)
      LibGtk.notebook_set_group_name(@pointer.as(LibGtk::Notebook*), group_name ? group_name.to_unsafe : nil)
      nil
    end

    def set_menu_label(child, menu_label)
      LibGtk.notebook_set_menu_label(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), menu_label ? menu_label.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def set_menu_label_text(child, menu_text)
      LibGtk.notebook_set_menu_label_text(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), menu_text.to_unsafe)
      nil
    end

    def scrollable=(scrollable)
      LibGtk.notebook_set_scrollable(@pointer.as(LibGtk::Notebook*), scrollable)
      nil
    end

    def show_border=(show_border)
      LibGtk.notebook_set_show_border(@pointer.as(LibGtk::Notebook*), show_border)
      nil
    end

    def show_tabs=(show_tabs)
      LibGtk.notebook_set_show_tabs(@pointer.as(LibGtk::Notebook*), show_tabs)
      nil
    end

    def set_tab_detachable(child, detachable)
      LibGtk.notebook_set_tab_detachable(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), detachable)
      nil
    end

    def set_tab_label(child, tab_label)
      LibGtk.notebook_set_tab_label(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), tab_label ? tab_label.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def set_tab_label_text(child, tab_text)
      LibGtk.notebook_set_tab_label_text(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), tab_text.to_unsafe)
      nil
    end

    def tab_pos=(pos : Gtk::PositionType)
      LibGtk.notebook_set_tab_pos(@pointer.as(LibGtk::Notebook*), pos)
      nil
    end

    def set_tab_reorderable(child, reorderable)
      LibGtk.notebook_set_tab_reorderable(@pointer.as(LibGtk::Notebook*), child.to_unsafe.as(LibGtk::Widget*), reorderable)
      nil
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
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget**, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Int32*) {
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
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget**, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(Notebook.new(_arg0), Gtk::Widget.new(_arg1), _arg2)
       __return_value
      }
      connect("page-added", __callback)
    end

    alias PageRemovedSignal = Notebook, Gtk::Widget, UInt32 ->
    def on_page_removed(&__block : PageRemovedSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget**, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(Notebook.new(_arg0), Gtk::Widget.new(_arg1), _arg2)
       __return_value
      }
      connect("page-removed", __callback)
    end

    alias PageReorderedSignal = Notebook, Gtk::Widget, UInt32 ->
    def on_page_reordered(&__block : PageReorderedSignal)
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget**, _arg2 : LibGtk::UInt32*) {
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
      __callback = ->(_arg0 : LibGtk::Notebook*, _arg1 : LibGtk::LibGtk::Widget**, _arg2 : LibGtk::UInt32*) {
       __return_value = __block.call(Notebook.new(_arg0), Gtk::Widget.new(_arg1), _arg2)
       __return_value
      }
      connect("switch-page", __callback)
    end

  end
end

