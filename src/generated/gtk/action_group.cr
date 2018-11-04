module Gtk

  # Actions are organised into groups. An action group is essentially a
  # map from names to `Gtk::Action` objects.
  class ActionGroup < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::ActionGroup*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ActionGroup*)
    end

    # Implements Buildable
    
    # Returns the "accel_group" property value
    #  The accelerator group the actions of this group should use.
    def accel_group
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accel_group", gvalue)
      Gtk::AccelGroup.cast(gvalue.object)
    end

    
    # Returns the "name" property value
    #  A name for the action.
    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end

    
    # Returns the "sensitive" property value
    #  Whether the action group is enabled.
    def sensitive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "sensitive", gvalue)
      gvalue.boolean
    end

    
    # Returns the "visible" property value
    #  Whether the action group is visible.
    def visible
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible", gvalue)
      gvalue.boolean
    end

    
    # Creates a new `GtkActionGroup` object. The name of the action group
    # is used when associating "keybindings" with the actions.
    # Parameters:
    #   *name* - the name of the action group.
    # DEPRECATED
    def self.new(name) : self
      __return_value = LibGtk.action_group_new(name.to_unsafe)
      cast Gtk::ActionGroup.new(__return_value)
    end

    
    # Adds an action object to the action group. Note that this function
    # does not set up the accel path of the action, which can lead to problems
    # if a user tries to modify the accelerator of a menuitem associated with
    # the action. Therefore you must either set the accel path yourself with
    # `Gtk::Action#set_accel_path()`, or use `Gtk::ActionGroup#add_action_with_accel (..., nil)`.
    # Parameters:
    #   *action* - an action.
    # DEPRECATED:
    def add_action(action)
      LibGtk.action_group_add_action(@pointer.as(LibGtk::ActionGroup*), action.to_unsafe.as(LibGtk::Action*))
      nil
    end

    
    # Adds an action object to the action group and sets up the accelerator.
    # If accelerator is `nil`, attempts to use the accelerator associated with the stock_id of the action. 
    # Parameters:
    #   *action* - an action
    #   *accelerator* - the accelerator for the action, in the format understood by gtk_accelerator_parse(),
    #                   or "" for no accelerator, or NULL to use the stock accelerator. 
    # DEPRECATED
    def add_action_with_accel(action, accelerator)
      LibGtk.action_group_add_action_with_accel(@pointer.as(LibGtk::ActionGroup*), action.to_unsafe.as(LibGtk::Action*), accelerator ? accelerator.to_unsafe : nil)
      nil
    end

    
    # Gets the accelerator group.
    # DEPRECATED
    def accel_group
      __return_value = LibGtk.action_group_get_accel_group(@pointer.as(LibGtk::ActionGroup*))
      Gtk::AccelGroup.new(__return_value)
    end

    
    # Looks up an action in the action group by name.
    # Parameters:
    #   *action_name* - the name of the action
    # DEPRECATED
    def action(action_name)
      __return_value = LibGtk.action_group_get_action(@pointer.as(LibGtk::ActionGroup*), action_name.to_unsafe)
      Gtk::Action.new(__return_value)
    end

    
    # Gets the name of the action group.
    # DEPRECATED
    def name
      __return_value = LibGtk.action_group_get_name(@pointer.as(LibGtk::ActionGroup*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns `true` if the group is sensitive.  The constituent actions
    # can only be logically sensitive (see `Gtk::Action#sensitive?()`) if
    # they are sensitive (see `Gtk::Action#get_sensitive()`) and their group
    # is sensitive.
    # DEPRECATED
    def sensitive
      __return_value = LibGtk.action_group_get_sensitive(@pointer.as(LibGtk::ActionGroup*))
      __return_value
    end

    
    # Returns `true` if the group is visible.  The constituent actions
    # can only be logically visible (see `Gtk::Action#is_visible()`) if
    # they are visible (see `Gtk::Action#get_visible()`) and their group
    # is visible.
    # DEPRECATED
    def visible
      __return_value = LibGtk.action_group_get_visible(@pointer.as(LibGtk::ActionGroup*))
      __return_value
    end

    
    # Lists the actions in the action group.
    # DEPRECATED
    def list_actions
      __return_value = LibGtk.action_group_list_actions(@pointer.as(LibGtk::ActionGroup*))
      GLib::ListIterator(Gtk::Action, LibGtk::Action**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    
    # Removes an action object from the action group.
    # Parameters:
    #   *action* - an action
    # DEPRECATED
    def remove_action(action)
      LibGtk.action_group_remove_action(@pointer.as(LibGtk::ActionGroup*), action.to_unsafe.as(LibGtk::Action*))
      nil
    end

    
    # Sets the accelerator group to be used by every action in this group.
    # Parameters:
    #   *accel_group* - a `Gtk::AccelGroup` to set or `nil`. 
    # DEPRECATED
    def accel_group=(accel_group)
      LibGtk.action_group_set_accel_group(@pointer.as(LibGtk::ActionGroup*), accel_group ? accel_group.to_unsafe.as(LibGtk::AccelGroup*) : nil)
      nil
    end

    
    # Changes the sensitivity of `Gtk::ActionGroup`.
    # Parameters:
    #   *sensitive* - new sensitivity
    # DEPRECATED
    def sensitive=(sensitive)
      LibGtk.action_group_set_sensitive(@pointer.as(LibGtk::ActionGroup*), sensitive)
      nil
    end

    # Sets a function to be used for translating the `label`
    #  and `tooltip` of`Gtk::ActionEntrys` added by `Gtk::ActionGroup#add_actions()`.
    # If you’re using `gettext()`, it is enough to set the translation domain
    # with `Gtk::ActionGroup#set_translation_domain()`.
    # Parameters:
    #   *func* - a `Gtk::TranslateFunc`
    #   *data* - data to be passed to func and notify. 
    #   *notify* - a `GDestroyNotify` function to be called when `Gtk::ActionGroup`
    #              is destroyed and when the translation function is changed again.
    # DEPRECATED
    def set_translate_func(func, data, notify)
      LibGtk.action_group_set_translate_func(@pointer.as(LibGtk::ActionGroup*), func, data ? data : nil, notify)
      nil
    end

    
    # Sets the translation domain and uses `LibGLib.g_dgettext()` for translating the label
    # and tooltip of `Gtk::ActionEntrys` added by `Gtk::ActionGroup#add_actions()`.
    # If you’re not using `gettext()` for localization, see `Gtk::ActionGroup#set_translate_func()`.
    # Parameters:
    #   *domain* - the translation domain to use for `LibGLib.g_dgettext()` calls,
    #              or `nil` to use the domain set with `textdomain()`. 
    def translation_domain=(domain)
      LibGtk.action_group_set_translation_domain(@pointer.as(LibGtk::ActionGroup*), domain ? domain.to_unsafe : nil)
      nil
    end

    
    # Changes the visible of `Gtk::ActionGroup`.
    # Parameters:
    #   *visible* - new visiblity.
    # DEPRECATED
    def visible=(visible)
      LibGtk.action_group_set_visible(@pointer.as(LibGtk::ActionGroup*), visible)
      nil
    end

    
    # Translates a string using the function set with 
    # `Gtk::ActionGroup#set_translate_func()`. This
    # is mainly intended for language bindings.
    # Parameters:
    #   *string* - a string.
    # DEPRECATED
    def translate_string(string)
      __return_value = LibGtk.action_group_translate_string(@pointer.as(LibGtk::ActionGroup*), string.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    # The "connect-proxy" signal is emitted after connecting a proxy to an action in the group.
    # Note that the proxy may have been connected to a different action before.
    # DEPRECATED
    alias ConnectProxySignal = ActionGroup, Gtk::Action, Gtk::Widget ->
    def on_connect_proxy(&__block : ConnectProxySignal)
      __callback = ->(_arg0 : LibGtk::ActionGroup*, _arg1 : LibGtk::LibGtk::Action**, _arg2 : LibGtk::LibGtk::Widget**) {
       __return_value = __block.call(ActionGroup.new(_arg0), Gtk::Action.new(_arg1), Gtk::Widget.new(_arg2))
       __return_value
      }
      connect("connect-proxy", __callback)
    end

    # The "disconnect-proxy" signal is emitted after disconnecting a proxy from an action in the group. 
    # DEPRECATED
    alias DisconnectProxySignal = ActionGroup, Gtk::Action, Gtk::Widget ->
    def on_disconnect_proxy(&__block : DisconnectProxySignal)
      __callback = ->(_arg0 : LibGtk::ActionGroup*, _arg1 : LibGtk::LibGtk::Action**, _arg2 : LibGtk::LibGtk::Widget**) {
       __return_value = __block.call(ActionGroup.new(_arg0), Gtk::Action.new(_arg1), Gtk::Widget.new(_arg2))
       __return_value
      }
      connect("disconnect-proxy", __callback)
    end

    # The "post-activate" signal is emitted just after the action in the action_group is activated.
    # DEPRECATED
    alias PostActivateSignal = ActionGroup, Gtk::Action ->
    def on_post_activate(&__block : PostActivateSignal)
      __callback = ->(_arg0 : LibGtk::ActionGroup*, _arg1 : LibGtk::LibGtk::Action**) {
       __return_value = __block.call(ActionGroup.new(_arg0), Gtk::Action.new(_arg1))
       __return_value
      }
      connect("post-activate", __callback)
    end

    # The "pre-activate" signal is emitted just before the action in the action_group is activated.
    # DEPRECATED
    alias PreActivateSignal = ActionGroup, Gtk::Action ->
    def on_pre_activate(&__block : PreActivateSignal)
      __callback = ->(_arg0 : LibGtk::ActionGroup*, _arg1 : LibGtk::LibGtk::Action**) {
       __return_value = __block.call(ActionGroup.new(_arg0), Gtk::Action.new(_arg1))
       __return_value
      }
      connect("pre-activate", __callback)
    end

  end
end

