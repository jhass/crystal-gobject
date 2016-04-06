require "./container"

module Gtk
  class MenuShell < Container
    def initialize(@gtk_menu_shell)
    end

    def to_unsafe
      @gtk_menu_shell.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable

    def activate_item(menu_item, force_deactivate)
      __return_value = LibGtk.menu_shell_activate_item((to_unsafe as LibGtk::MenuShell*), (menu_item.to_unsafe as LibGtk::Widget*), force_deactivate)
      __return_value
    end

    def append(child)
      __return_value = LibGtk.menu_shell_append((to_unsafe as LibGtk::MenuShell*), (child.to_unsafe as LibGtk::MenuItem*))
      __return_value
    end

    def bind_model(model, action_namespace, with_separators)
      __return_value = LibGtk.menu_shell_bind_model((to_unsafe as LibGtk::MenuShell*), model && (model.to_unsafe as LibGio::MenuModel*), action_namespace && action_namespace, with_separators)
      __return_value
    end

    def cancel
      __return_value = LibGtk.menu_shell_cancel((to_unsafe as LibGtk::MenuShell*))
      __return_value
    end

    def deactivate
      __return_value = LibGtk.menu_shell_deactivate((to_unsafe as LibGtk::MenuShell*))
      __return_value
    end

    def deselect
      __return_value = LibGtk.menu_shell_deselect((to_unsafe as LibGtk::MenuShell*))
      __return_value
    end

    def parent_shell
      __return_value = LibGtk.menu_shell_get_parent_shell((to_unsafe as LibGtk::MenuShell*))
      Gtk::Widget.new(__return_value)
    end

    def selected_item
      __return_value = LibGtk.menu_shell_get_selected_item((to_unsafe as LibGtk::MenuShell*))
      Gtk::Widget.new(__return_value)
    end

    def take_focus
      __return_value = LibGtk.menu_shell_get_take_focus((to_unsafe as LibGtk::MenuShell*))
      __return_value
    end

    def insert(child, position)
      __return_value = LibGtk.menu_shell_insert((to_unsafe as LibGtk::MenuShell*), (child.to_unsafe as LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def prepend(child)
      __return_value = LibGtk.menu_shell_prepend((to_unsafe as LibGtk::MenuShell*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def select_first(search_sensitive)
      __return_value = LibGtk.menu_shell_select_first((to_unsafe as LibGtk::MenuShell*), search_sensitive)
      __return_value
    end

    def select_item(menu_item)
      __return_value = LibGtk.menu_shell_select_item((to_unsafe as LibGtk::MenuShell*), (menu_item.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def take_focus=(take_focus)
      __return_value = LibGtk.menu_shell_set_take_focus((to_unsafe as LibGtk::MenuShell*), take_focus)
      __return_value
    end

    alias ActivateCurrentSignal = MenuShell, Bool -> 
    def on_activate_current(&__block : ActivateCurrentSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : LibGtk::Bool*) {
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
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : LibGtk::LibGtk::DirectionType*) {
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
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : LibGtk::LibGtk::Widget*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(MenuShell.new(_arg0), Gtk::Widget.new(_arg1), _arg2)
       __return_value
      }
      connect("insert", __callback)
    end

    alias MoveCurrentSignal = MenuShell, Gtk::MenuDirectionType -> 
    def on_move_current(&__block : MoveCurrentSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : LibGtk::LibGtk::MenuDirectionType*) {
       __return_value = __block.call(MenuShell.new(_arg0), _arg1)
       __return_value
      }
      connect("move-current", __callback)
    end

    alias MoveSelectedSignal = MenuShell, Int32 -> Bool
    def on_move_selected(&__block : MoveSelectedSignal)
      __callback = ->(_arg0 : LibGtk::MenuShell*, _arg1 : LibGtk::Int32*) {
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

