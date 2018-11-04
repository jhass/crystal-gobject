module Gtk
  
  # Gtk::Actions represent operations that the user can be perform, along with
  # some information how it should be presented in the interface. Each action
  # provides methods to create icons, menu items and toolbar items
  # representing itself.
  # DEPRECATED : In GTK+ 3.10, GtkAction has been deprecated. Use `Gio::Action`
  # instead, and associate actions with `Gtk::Actionable` widgets. Use
  # `Gio::MenuModel` for creating menus with `Gtk::Menu#new_from_model()`.
  class Action < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::Action*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Action*)
    end

    # Implements Buildable
    
    # Returns the "action_group" property value
    #  The `Gtk::ActionGroup` this `Gtk::Action` is associated with,
    #  or nil (for internal use).
    def action_group
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "action_group", gvalue)
      Gtk::ActionGroup.cast(gvalue.object)
    end

    
    # Returns the "always_show_image" property value
    #  If `true`, the action's menu item proxies will ignore the `“gtk-menu-images”`
    # setting and always show their image, if available.
    def always_show_image
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "always_show_image", gvalue)
      gvalue.boolean
    end

    
    # Returns the "gicon" property value
    #  The `Gio::Icon` displayed in the `Gtk::Action`.
    def gicon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gicon", gvalue)
      gvalue
    end

    
    # Returns the "hide_if_empty" property value
    #  When `true`, empty menu proxies for this action are hidden.
    def hide_if_empty
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "hide_if_empty", gvalue)
      gvalue.boolean
    end

    
    # Returns the "icon_name" property value
    #  The name of the icon from the icon theme. 
    def icon_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_name", gvalue)
      gvalue.string
    end

    
    # Returns the "is_important" property value
    #  Whether the action is considered important. When true, toolitem
    # proxies for this action show text in GTK_TOOLBAR_BOTH_HORIZ mode.
    def is_important
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_important", gvalue)
      gvalue.boolean
    end

    
    # Returns the "label" property value
    #  The label used for menu items and buttons that activate
    # this action. If the label is `nil`, GTK+ uses the stock
    # label specified via the stock-id property.
    def label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "label", gvalue)
      gvalue.string
    end

    
    # Returns the "name" property value
    #  A unique name for the action.
    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end

    
    # Returns the "sensitive" property value
    #  Whether the action is enabled.
    def sensitive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "sensitive", gvalue)
      gvalue.boolean
    end

    
    # Returns the "short_label" property value
    #  A shorter label that may be used on toolbar buttons.
    def short_label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "short_label", gvalue)
      gvalue.string
    end

    
    # Returns the "stock_id" property value
    #  This is an appearance property and thus only applies if
    # `“use-action-appearance”` is `true`.
    def stock_id
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stock_id", gvalue)
      gvalue.string
    end

    
    # Returns the "tooltip" property value
    #  A tooltip for this action.
    def tooltip
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tooltip", gvalue)
      gvalue.string
    end

    
    # Returns the "visible" property value
    #  Whether the action is visible.
    def visible
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible", gvalue)
      gvalue.boolean
    end

    
    # Returns the "visible_horizontal" property value
    #  Whether the toolbar item is visible when the toolbar is in a horizontal orientation.
    def visible_horizontal
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible_horizontal", gvalue)
      gvalue.boolean
    end

    
    # Returns the "visible_overflown" property value
    #  When `true`, toolitem proxies for this action are represented in the
    # toolbar overflow menu.
    def visible_overflown
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible_overflown", gvalue)
      gvalue.boolean
    end

    
    # Returns the "visible_vertical" property value
    #  Whether the toolbar item is visible when the toolbar is in a vertical orientation.
    def visible_vertical
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible_vertical", gvalue)
      gvalue.boolean
    end

    
    # Creates a new `Gtk::Action` object. To add the action to a
    # `Gtk::ActionGroup` and set the accelerator for the action,
    # call `Gtk::ActionGroup#add_action_with_accel()`.
    # Parameters:
    #   *stock_id* - the stock icon to display in widgets representing
    #                the action, or `nil`. 
    # DEPRECATED : Use `Gio::Action` instead, associating it to a widget with
    # `Gtk::Actionable` or creating a `Gtk::Menu` with `Gtk::Menu#new_from_model()`
    def self.new(name, label, tooltip, stock_id) : self
      __return_value = LibGtk.action_new(name.to_unsafe, label ? label.to_unsafe : nil, tooltip ? tooltip.to_unsafe : nil, stock_id ? stock_id.to_unsafe : nil)
      cast Gtk::Action.new(__return_value)
    end

    
    # Emits the “activate” signal on the specified action, if it isn't
    # insensitive. This gets called by the proxy widgets when they get 
    # activated.
    # DEPRECATED : Use `Gtk::ActionGroup#activate_action()` on a `Gio::Action` instead
    def activate
      LibGtk.action_activate(@pointer.as(LibGtk::Action*))
      nil
    end

    
    # Disable activation signals from the action 
    # DEPRECATED : Use `Gio::SimpleAction#set_enabled()` to disable the
    # `Gio::SimpleAction` instead
    def block_activate
      LibGtk.action_block_activate(@pointer.as(LibGtk::Action*))
      nil
    end

    
    # Installs the accelerator for `Gtk::Action`
    #  if `Gtk::Action` has an accel path and group.
    # See `Gtk::Action#set_accel_path()` and 
    # `Gtk::Action#set_accel_group()`
    # DEPRECATED : Use `Gio::Action` and the accelerator group 
    # on an associated `Gtk::Menu` instead
    def connect_accelerator
      LibGtk.action_connect_accelerator(@pointer.as(LibGtk::Action*))
      nil
    end

    
    # This function is intended for use by action implementations to
    # create icons displayed in the proxy widgets.
    # Parameters:
    #   *icon_size* - the size of the icon (`GtkIconSize`) that should be created. 
    # DEPRECATED: Use `Gio::MenuItem#set_icon()` to set an icon on a `Gio::MenuItem`,
    # or `Gtk::Container#add()` to add a `Gtk::Image` to a `Gtk::Button`
    def create_icon(icon_size)
      __return_value = LibGtk.action_create_icon(@pointer.as(LibGtk::Action*), Int32.new(icon_size))
      Gtk::Widget.new(__return_value)
    end

    
    # Creates a menu item widget that proxies for the given action.
    # DEPRECATED : Use `Gio::MenuItem#new()` and associate it with a `Gio::Action`
    # instead.
    def create_menu
      __return_value = LibGtk.action_create_menu(@pointer.as(LibGtk::Action*))
      Gtk::Widget.new(__return_value)
    end

    
    # Creates a menu item widget that proxies for the given action.
    # DEPRECATED : Use `Gio::MenuItem#new()` and associate it with a `Gio::Action`
    # instead.
    def create_menu_item
      __return_value = LibGtk.action_create_menu_item(@pointer.as(LibGtk::Action*))
      Gtk::Widget.new(__return_value)
    end

    
    # Creates a toolbar item widget that proxies for the given action.
    # DEPRECATED : Use a `Gtk::ToolItem` and associate it with a `Gio::Action` using
    # `Gtk::Actionable#set_action_name()` instead
    def create_tool_item
      __return_value = LibGtk.action_create_tool_item(@pointer.as(LibGtk::Action*))
      Gtk::Widget.new(__return_value)
    end

    
    # Undoes the effect of one call to `Gtk::Action#connect_accelerator()`.
    # DEPRECATED : Use `Gio::Action` and the accelerator group on an associated `Gtk::Menu` instead
    def disconnect_accelerator
      LibGtk.action_disconnect_accelerator(@pointer.as(LibGtk::Action*))
      nil
    end

    
    # Returns the accel closure for this action.
    # DEPRECATED : Use `Gio::Action` and `Gtk::Menu` instead, which have no
    # equivalent for getting the accel closure
    def accel_closure
      __return_value = LibGtk.action_get_accel_closure(@pointer.as(LibGtk::Action*))
      GObject::Closure.new(__return_value)
    end

    
    # Returns the accel path for this action.
    # DEPRECATED : Use `Gio::Action` and the accelerator path on an associated
    # `Gtk::Menu` instead
    def accel_path
      __return_value = LibGtk.action_get_accel_path(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns whether `Gtk::Action`'s menu item proxies will always
    # show their image, if available.
    # DEPRECATED : Use `Gio::MenuItem#get_attribute_value()`
    # on a `Gio::MenuItem` instead
    def always_show_image
      __return_value = LibGtk.action_get_always_show_image(@pointer.as(LibGtk::Action*))
      __return_value
    end

    
    # Gets the gicon of `Gtk::Action`.
    # DEPRECATED : Use `Gio::Action` instead, and
    # `Gio::MenuItem#get_attribute_value()` to get an icon from a `Gio::MenuItem`
    # associated with a `Gio::Action`
    def gicon
      __return_value = LibGtk.action_get_gicon(@pointer.as(LibGtk::Action*))
      __return_value
    end

    
    # Gets the icon name of `Gtk::Action`.
    # DEPRECATED : Use `Gio::Action` instead, and
    # `Gio::MenuItem#get_attribute_value()` to get an icon name from a `Gio::MenuItem`
    # associated with a `Gio::Action`
    def icon_name
      __return_value = LibGtk.action_get_icon_name(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Checks whether `Gtk::Action` is important or not.
    # DEPRECATED : Use `Gio::Action` instead, and control and monitor whether
    # labels are shown directly
    def is_important
      __return_value = LibGtk.action_get_is_important(@pointer.as(LibGtk::Action*))
      __return_value
    end

    
    # Gets the label text of `Gtk::Action`.
    # DEPRECATED : Use `Gio::Action` instead, and get a label from a menu item
    # with `Gio::MenuItem#get_attribute_value()`. For `Gtk::Actionable` widgets, use the
    # widget-specific API to get a label
    def label
      __return_value = LibGtk.action_get_label(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns the name of the action.
    # DEPRECATED : Use `Gio::Action#get_name()` on a `Gio::Action` instead
    def name
      __return_value = LibGtk.action_get_name(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns the proxy widgets for an action. 
    # See also `Gtk::Activatable#get_related_action()`.
    # DEPRECATED
    def proxies
      __return_value = LibGtk.action_get_proxies(@pointer.as(LibGtk::Action*))
      GLib::SListIterator(Gtk::Widget, LibGtk::Widget**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    
    # Returns whether the action itself is sensitive. Note that this doesn’t 
    # necessarily mean effective sensitivity. See `Gtk::Action#sensitive?()` 
    # for that.
    # DEPRECATED : Use `Gio::Action#get_enabled()` on a `Gio::Action` instead
    def sensitive
      __return_value = LibGtk.action_get_sensitive(@pointer.as(LibGtk::Action*))
      __return_value
    end

    
    # Gets the short label text of `Gtk::Action` .
    # DEPRECATED : Use `Gio::Action` instead,
    # which has no equivalent of short labels.
    def short_label
      __return_value = LibGtk.action_get_short_label(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Gets the stock id of `Gtk::action`.
    # DEPRECATED : Use `Gio::Action` instead,
    # which has no equivalent of stock items.
    def stock_id
      __return_value = LibGtk.action_get_stock_id(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Gets the tooltip text of `Gtk::Action`.
    # DEPRECATED : Use `Gio::Action` instead, and get tooltips from associated
    # `Gtk::Actionable` widgets with `Gtk::Widget#get_tooltip_text()`
    def tooltip
      __return_value = LibGtk.action_get_tooltip(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns whether the action itself is visible. Note that this doesn’t 
    # necessarily mean effective visibility. See `Gtk::Action#sensitive?()` 
    # for that.
    # DEPRECATED : Use `Gio::Action` instead, and control and monitor the state of
    # `Gtk::Actionable` widgets directly
    def visible
      __return_value = LibGtk.action_get_visible(@pointer.as(LibGtk::Action*))
      __return_value
    end

    
    # Checks whether `Gtk::Action` is visible when horizontal.
    # DEPRECATED : Use `Gio::Action` instead, and control and monitor the
    # visibility of associated widgets and menu items directly
    def visible_horizontal
      __return_value = LibGtk.action_get_visible_horizontal(@pointer.as(LibGtk::Action*))
      __return_value
    end

    
    # Checks whether `Gtk::Action` is visible when horizontal.
    # DEPRECATED : Use `Gio::Action` instead, and control and monitor the
    # visibility of associated widgets and menu items directly
    def visible_vertical
      __return_value = LibGtk.action_get_visible_vertical(@pointer.as(LibGtk::Action*))
      __return_value
    end

    
    # Returns whether the action is effectively sensitive.
    # DEPRECATED : Use `Gio::Action#get_enabled()` on a `Gio::Action`
    # instead
    def sensitive?
      __return_value = LibGtk.action_is_sensitive(@pointer.as(LibGtk::Action*))
      __return_value
    end

    
    # Returns whether the action is effectively visible.
    # DEPRECATED : Use `Gio::Action` instead, and control and monitor the state of
    # `Gtk::Actionable` widgets directly
    def visible?
      __return_value = LibGtk.action_is_visible(@pointer.as(LibGtk::Action*))
      __return_value
    end

    
    # Sets the `Gtk::AccelGroup` in which the accelerator for this action will be installed.
    # DEPRECATED : Use `Gio::Action` and the accelerator group on an associated `Gtk::Menu` instead
    def accel_group=(accel_group)
      LibGtk.action_set_accel_group(@pointer.as(LibGtk::Action*), accel_group ? accel_group.to_unsafe.as(LibGtk::AccelGroup*) : nil)
      nil
    end

    
    # Sets the accel path for this action. 
    # All proxy widgets associated with the action will have this accel path,
    # so that their accelerators are consistent.
    # Note that accel_path string will be stored in a `Gio:Quark`. Therefore,
    # if you pass a static string, you can save some memory
    # by interning it first with `LibGLib.g_intern_static_string()`.
    # DEPRECATED : Use `Gio::Action` and the accelerator group on an associated `Gtk::Menu` instead
    def accel_path=(accel_path)
      LibGtk.action_set_accel_path(@pointer.as(LibGtk::Action*), accel_path.to_unsafe)
      nil 
    end

    
    # Sets whether `Gtk::Action`'s menu item proxies will ignore the
    # `“gtk-menu-images”` setting and always show their image, if available.
    # Parameters:
    #   *always_show* - `true` if menuitem proxies should always show their image
    # DEPRECATED : Use `Gio::MenuItem#set_icon()` on a `Gio::MenuItem` instead, if the
    # item should have an image
    def always_show_image=(always_show)
      LibGtk.action_set_always_show_image(@pointer.as(LibGtk::Action*), always_show)
      nil
    end

    
    # Sets the icon of `Gtk::Action`.
    # Parameters:
    #   *icon* - the `Gio::Icon` to set
    # DEPRECATED : Use `Gio::Action` instead, and `Gio::MenuItem#set_icon()` to set an
    # icon on a `Gio::MenuItem` associated with a `Gio::Action`, or `Gtk::Container#add()` to
    # add a `Gtk::Image` to a `Gtk::Button`
    def gicon=(icon)
      LibGtk.action_set_gicon(@pointer.as(LibGtk::Action*), icon.to_unsafe.as(LibGio::Icon*))
      nil
    end

    
    # Sets the icon name on `Gtk::Action`.
    # Parameters:
    #   *icon_name* - the icon name to set
    # DEPRECATED : Use `Gio::Action` instead, and `Gio::MenuItem#set_icon()` to set an
    # icon on a `Gio::MenuItem` associated with a `Gio::Action`, or `Gtk::Container#add()` to
    # add a `Gtk::Image` to a `Gtk::Button`
    def icon_name=(icon_name)
      LibGtk.action_set_icon_name(@pointer.as(LibGtk::Action*), icon_name.to_unsafe)
      nil
    end

    
    # Sets whether the action is important, this attribute is used
    # primarily by toolbar items to decide whether to show a label or not.
    # Parameters:
    #   *is_important* - `true` to make the action important
    # DEPRECATED : Use `Gio::Action` instead, and control and monitor whether
    # labels are shown directly.
    def is_important=(is_important)
      LibGtk.action_set_is_important(@pointer.as(LibGtk::Action*), is_important)
      nil
    end

    
    # Sets the label of `Gtk::Action`.
    # Parameters:
    #   *label* - the label text to set
    # DEPRECATED : Use `Gio::Action` instead, and set a label on a menu item with
    # `Gio::MenuItem#set_label()`. For `Gtk::Actionable` widgets, use the widget-specific
    # API to set a label
    def label=(label)
      LibGtk.action_set_label(@pointer.as(LibGtk::Action*), label.to_unsafe)
      nil
    end

    
    # Sets the "sensitive" property of the action to *sensitive*.
    # Note that this doesn’t necessarily mean effective sensitivity. See 
    # `Gtk::Action#sensitive?()` for that.
    # Parameters:
    #   *sensitive* - `true` to make the action sensitive.
    # DEPRECATED : Use `Gio::SimpleAction#set_enabled()` on a `Gio::SimpleAction`
    # instead
    def sensitive=(sensitive)
      LibGtk.action_set_sensitive(@pointer.as(LibGtk::Action*), sensitive)
      nil
    end

    
    # Sets a shorter label text on `Gtk::Action`.
    # Parameters:
    #   *short_label* - the label text to set
    # DEPRECATED : Use `Gio::Action` instead, which has no equivalent of short
    # labels
    def short_label=(short_label)
      LibGtk.action_set_short_label(@pointer.as(LibGtk::Action*), short_label.to_unsafe)
      nil
    end

    
    # Sets the stock id on `Gtk::Action`.
    # Parameters:
    #   *stock_id* - the stock id
    # DEPRECATED : Use `Gio::Action` instead, which has no equivalent of stock
    # items
    def stock_id=(stock_id)
      LibGtk.action_set_stock_id(@pointer.as(LibGtk::Action*), stock_id.to_unsafe)
      nil
    end

    
    # Sets the tooltip text on `Gtk::Action`.
    # Parameters:
    #   *tooltip* - the tooltip text
    # DEPRECATED : Use `Gio::Action` instead, and set tooltips on associated
    # `Gtk::Actionable` widgets with `Gtk::Widget#set_tooltip_text()`.
    def tooltip=(tooltip)
      LibGtk.action_set_tooltip(@pointer.as(LibGtk::Action*), tooltip.to_unsafe)
      nil
    end

    
    # Sets the "visible" property of the action to *visible*.
    # Note that this doesn’t necessarily mean effective visibility.
    # See `Gtk::Action#is_visible()` for that.
    # Parameters:
    #   *visible* - `true` to make the action visible
    # DEPRECATED : Use `Gio::Action` instead, and control and monitor the state of
    # `Gtk::Actionable` widgets directly.
    def visible=(visible)
      LibGtk.action_set_visible(@pointer.as(LibGtk::Action*), visible)
      nil
    end

    
    # Sets whether `Gtk::Action` is visible when horizontal.
    # Parameters:
    #   *visible_horizontal* - whether the action is visible horizontally.
    # DEPRECATED : Use `Gio::Action` instead, and control and monitor the
    # visibility of associated widgets and menu items directly.
    def visible_horizontal=(visible_horizontal)
      LibGtk.action_set_visible_horizontal(@pointer.as(LibGtk::Action*), visible_horizontal)
      nil
    end

    
    # Sets whether `Gtk::Action` is visible when vertical.
    # Parameters:
    #   *visible_vertical* - whether the action is visible vertically.
    # DEPRECATED : Use `Gio::Action` instead, and control and monitor the
    # visibility of associated widgets and menu items directly.
    def visible_vertical=(visible_vertical)
      LibGtk.action_set_visible_vertical(@pointer.as(LibGtk::Action*), visible_vertical)
      nil
    end

    
    # Reenable activation signals from the action.
    # DEPRECATED : Use `Gio::SimpleAction#set_enabled()` to enable the
    # `Gio::SimpleAction` instead.
    def unblock_activate
      LibGtk.action_unblock_activate(@pointer.as(LibGtk::Action*))
      nil
    end

    # The "activate" signal is emitted when the action is activated. 
    # DEPRECATED : Use `Gio::SimpleAction` instead.
    alias ActivateSignal = Action ->
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::Action*) {
       __return_value = __block.call(Action.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

  end
end

