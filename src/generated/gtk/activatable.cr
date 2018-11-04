module Gtk
  
  # Activatable widgets can be connected to a `Gtk::Action` and reflects
  # the state of its action. A `Gtk::Activatable` can also provide feedback
  # through its action, as they are responsible for activating their
  # related actions.
  module Activatable
    
    # This is a utility function for `Gtk::Activatable` implementors.
    # When implementing `Gtk::Activatable` you must call this when
    # handling changes of the `“related-action”`, and
    # you must also use this to break references in `GObject#dispose()`.
    # This function adds a reference to the currently set related action for you,
    # it also makes sure the `Gtk::Activatable#update()` method is called when
    # the related `Gtk::Action` properties change and registers to the action’s proxy list.
    # Parameters:
    #   *action* - the `Gtk::Action` to set
    # DEPRECATED
    def do_set_related_action(action)
      LibGtk.activatable_do_set_related_action(@pointer.as(LibGtk::Activatable*), action.to_unsafe.as(LibGtk::Action*))
      nil
    end

    
    # Gets the related `Gtk::Action` for `Gtk::Activatable .
    # DEPRECATED    
    def related_action
      __return_value = LibGtk.activatable_get_related_action(@pointer.as(LibGtk::Activatable*))
      Gtk::Action.new(__return_value)
    end

    
    # Gets whether this activatable should reset its layout
    # and appearance when setting the related action or when
    # the action changes appearance.
    # DEPRECATED
    def use_action_appearance
      __return_value = LibGtk.activatable_get_use_action_appearance(@pointer.as(LibGtk::Activatable*))
      __return_value
    end

    
    # Sets the related action on the `activatable`object.
    # `Gtk::Activatable` implementors need to handle the `“related-action”`
    # property and call `Gtk::Activatable#do_set_related_action()` when it changes.
    # Parameters:
    #   *action* - the `Gtk::Action` to set
    # DEPRECATED:
    def related_action=(action)
      LibGtk.activatable_set_related_action(@pointer.as(LibGtk::Activatable*), action.to_unsafe.as(LibGtk::Action*))
      nil
    end

    
    # Sets whether this activatable should reset its layout and appearance
    # when setting the related action or when the action changes appearance
    # `Gtk::Activatable` implementors need to handle the
    # `“use-action-appearance”` property and call
    # `Gtk::Activatable#sync_action_properties()` to update `activatable`
    # if needed.
    # Parameters:
    #   *use_appearance* - whether to use the actions appearance
    # DEPRECATED
    def use_action_appearance=(use_appearance)
      LibGtk.activatable_set_use_action_appearance(@pointer.as(LibGtk::Activatable*), use_appearance)
      nil
    end

    
    # This is called to update the activatable completely, this is called
    # internally when the `“related-action”` property is set
    # or unset and by the implementing class when
    # `“use-action-appearance”` changes.
    # Parameters:
    #   *action* - the related `Gtk::Action` or `nil`. 
    # DEPRECATED:
    def sync_action_properties(action)
      LibGtk.activatable_sync_action_properties(@pointer.as(LibGtk::Activatable*), action ? action.to_unsafe.as(LibGtk::Action*) : nil)
      nil
    end

  end
end

