require "./container"

module Gtk
  class MenuShell < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::MenuShell*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuShell*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def take_focus
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "take_focus", gvalue)
      gvalue.boolean
    end

    def activate_item(menu_item, force_deactivate)
      LibGtk.menu_shell_activate_item(@pointer.as(LibGtk::MenuShell*), menu_item.to_unsafe.as(LibGtk::Widget*), force_deactivate)
      nil
    end

    def append(child)
      LibGtk.menu_shell_append(@pointer.as(LibGtk::MenuShell*), child.to_unsafe.as(LibGtk::MenuItem*))
      nil
    end

    def bind_model(model, action_namespace, with_separators)
      LibGtk.menu_shell_bind_model(@pointer.as(LibGtk::MenuShell*), model ? model.to_unsafe.as(LibGio::MenuModel*) : nil, action_namespace ? action_namespace.to_unsafe : nil, with_separators)
      nil
    end

    def cancel
      LibGtk.menu_shell_cancel(@pointer.as(LibGtk::MenuShell*))
      nil
    end

    def deactivate
      LibGtk.menu_shell_deactivate(@pointer.as(LibGtk::MenuShell*))
      nil
    end

    def deselect
      LibGtk.menu_shell_deselect(@pointer.as(LibGtk::MenuShell*))
      nil
    end

    def parent_shell
      __return_value = LibGtk.menu_shell_get_parent_shell(@pointer.as(LibGtk::MenuShell*))
      Gtk::Widget.new(__return_value)
    end

    def selected_item
      __return_value = LibGtk.menu_shell_get_selected_item(@pointer.as(LibGtk::MenuShell*))
      Gtk::Widget.new(__return_value)
    end

    def take_focus
      __return_value = LibGtk.menu_shell_get_take_focus(@pointer.as(LibGtk::MenuShell*))
      __return_value
    end

    def insert(child, position)
      LibGtk.menu_shell_insert(@pointer.as(LibGtk::MenuShell*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(position))
      nil
    end

    def prepend(child)
      LibGtk.menu_shell_prepend(@pointer.as(LibGtk::MenuShell*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def select_first(search_sensitive)
      LibGtk.menu_shell_select_first(@pointer.as(LibGtk::MenuShell*), search_sensitive)
      nil
    end

    def select_item(menu_item)
      LibGtk.menu_shell_select_item(@pointer.as(LibGtk::MenuShell*), menu_item.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def take_focus=(take_focus)
      LibGtk.menu_shell_set_take_focus(@pointer.as(LibGtk::MenuShell*), take_focus)
      nil
    end

    alias ActivateCurrentSignal = MenuShell, Bool ->
    def on_activate_current(&__block : ActivateCurrentSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : Bool*) {
       __return_value = __block.call(MenuShell.new(_arg0), _arg1)
       __return_value
      }
      connect("activate-current", __callback)
    end

    alias CancelSignal = MenuShell ->
    def on_cancel(&__block : CancelSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*) {
       __return_value = __block.call(MenuShell.new(_arg0))
       __return_value
      }
      connect("cancel", __callback)
    end

    alias CycleFocusSignal = MenuShell, Gtk::DirectionType ->
    def on_cycle_focus(&__block : CycleFocusSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : LibGtk::DirectionType*) {
       __return_value = __block.call(MenuShell.new(_arg0), _arg1)
       __return_value
      }
      connect("cycle-focus", __callback)
    end

    alias DeactivateSignal = MenuShell ->
    def on_deactivate(&__block : DeactivateSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*) {
       __return_value = __block.call(MenuShell.new(_arg0))
       __return_value
      }
      connect("deactivate", __callback)
    end

    alias InsertSignal = MenuShell, Gtk::Widget, Int32 ->
    def on_insert(&__block : InsertSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : LibGtk::Widget**, _arg2 : Int32*) {
       __return_value = __block.call(MenuShell.new(_arg0), Gtk::Widget.new(_arg1), _arg2)
       __return_value
      }
      connect("insert", __callback)
    end

    alias MoveCurrentSignal = MenuShell, Gtk::MenuDirectionType ->
    def on_move_current(&__block : MoveCurrentSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : LibGtk::MenuDirectionType*) {
       __return_value = __block.call(MenuShell.new(_arg0), _arg1)
       __return_value
      }
      connect("move-current", __callback)
    end

    alias MoveSelectedSignal = MenuShell, Int32 -> Bool
    def on_move_selected(&__block : MoveSelectedSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : Int32*) {
       __return_value = __block.call(MenuShell.new(_arg0), _arg1)
       __return_value
      }
      connect("move-selected", __callback)
    end

    alias SelectionDoneSignal = MenuShell ->
    def on_selection_done(&__block : SelectionDoneSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*) {
       __return_value = __block.call(MenuShell.new(_arg0))
       __return_value
      }
      connect("selection-done", __callback)
    end

  end
end

