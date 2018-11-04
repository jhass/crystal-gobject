module Gtk

  # This interface provides a convenient way of associating widgets with
  # actions on a `Gtk::ApplicationWindow` or `Gtk::Application`.
  module Actionable
    
    # Gets the action name for `actionable`.
    def action_name
      __return_value = LibGtk.actionable_get_action_name(@pointer.as(LibGtk::Actionable*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    
    # Gets the current target value of `actionable`.
    def action_target_value
      __return_value = LibGtk.actionable_get_action_target_value(@pointer.as(LibGtk::Actionable*))
      GLib::Variant.new(__return_value)
    end

    
    # Specifies the name of the action with which this widget should be associated.
    # If action_name is `nill` then the widget will be unassociated from any previous action.
    # Usually this function is used when the widget is located 
    # (or will be located) within the hierarchy of a `Gtk::ApplicationWindow`.
    # Names are of the form “win.save” or “app.quit” for actions on the containing Gtk::ApplicationWindow
    # or its associated `Gtk::Application`, respectively. This is the same form used
    # for actions in the `Gio::Menu` associated with the window.
    # Parameters:
    #   *action_name - an action name, or `nil`.
    def action_name=(action_name)
      LibGtk.actionable_set_action_name(@pointer.as(LibGtk::Actionable*), action_name ? action_name.to_unsafe : nil)
      nil
    end

    
    # Sets the target value of an actionable widget.
    # If target_value is `nil` then the target value is unset.
    # The target value has two purposes. First, it is used as the parameter to activation
    # of the action associated with the GtkActionable widget. Second, it is used
    # to determine if the widget should be rendered as “active” — 
    # the widget is active if the state is equal to the given target.
    # Consider the example of associating a set of buttons with a `Gio::Action`
    # with string state in a typical “radio button” situation. Each button will be
    # associated with the same action, but with a different target value for that action. 
    # Clicking on a particular button will activate the action with the target of that button,
    # which will typically cause the action’s state to change to that value.
    # Since the action’s state is now equal to the target value of the button,
    # the button will now be rendered as active (and the other buttons, with different targets, rendered inactive).
    # Parameters:
    #   *target_value* - a `Gio::Variant` to set as the target value, or `nil`
    def action_target_value=(target_value)
      LibGtk.actionable_set_action_target_value(@pointer.as(LibGtk::Actionable*), target_value.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    
    # Sets the action-name and associated string target value of an actionable widget.
    # *detailed_action_name* is a string in the format accepted by `Gio::Action#parse_detailed_name()`.
    # Parameters:
    #   *detailed_action_name* - the detailed action name
    def detailed_action_name=(detailed_action_name)
      LibGtk.actionable_set_detailed_action_name(@pointer.as(LibGtk::Actionable*), detailed_action_name.to_unsafe)
      nil
    end

  end
end

