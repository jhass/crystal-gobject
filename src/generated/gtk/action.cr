module Gtk
  class Action < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::Action*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Action*)
    end

    # Implements Buildable
    def action_group
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "action_group", gvalue)
      Gtk::ActionGroup.cast(gvalue.object)
    end

    def always_show_image
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "always_show_image", gvalue)
      gvalue.boolean
    end

    def gicon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gicon", gvalue)
      gvalue
    end

    def hide_if_empty
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "hide_if_empty", gvalue)
      gvalue.boolean
    end

    def icon_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_name", gvalue)
      gvalue.string
    end

    def is_important
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_important", gvalue)
      gvalue.boolean
    end

    def label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "label", gvalue)
      gvalue.string
    end

    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end

    def sensitive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "sensitive", gvalue)
      gvalue.boolean
    end

    def short_label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "short_label", gvalue)
      gvalue.string
    end

    def stock_id
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stock_id", gvalue)
      gvalue.string
    end

    def tooltip
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tooltip", gvalue)
      gvalue.string
    end

    def visible
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible", gvalue)
      gvalue.boolean
    end

    def visible_horizontal
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible_horizontal", gvalue)
      gvalue.boolean
    end

    def visible_overflown
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible_overflown", gvalue)
      gvalue.boolean
    end

    def visible_vertical
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible_vertical", gvalue)
      gvalue.boolean
    end

    def self.new(name, label, tooltip, stock_id) : self
      __return_value = LibGtk.action_new(name.to_unsafe, label ? label.to_unsafe : nil, tooltip ? tooltip.to_unsafe : nil, stock_id ? stock_id.to_unsafe : nil)
      cast Gtk::Action.new(__return_value)
    end

    def activate
      LibGtk.action_activate(@pointer.as(LibGtk::Action*))
      nil
    end

    def block_activate
      LibGtk.action_block_activate(@pointer.as(LibGtk::Action*))
      nil
    end

    def connect_accelerator
      LibGtk.action_connect_accelerator(@pointer.as(LibGtk::Action*))
      nil
    end

    def create_icon(icon_size)
      __return_value = LibGtk.action_create_icon(@pointer.as(LibGtk::Action*), Int32.new(icon_size))
      Gtk::Widget.new(__return_value)
    end

    def create_menu
      __return_value = LibGtk.action_create_menu(@pointer.as(LibGtk::Action*))
      Gtk::Widget.new(__return_value)
    end

    def create_menu_item
      __return_value = LibGtk.action_create_menu_item(@pointer.as(LibGtk::Action*))
      Gtk::Widget.new(__return_value)
    end

    def create_tool_item
      __return_value = LibGtk.action_create_tool_item(@pointer.as(LibGtk::Action*))
      Gtk::Widget.new(__return_value)
    end

    def disconnect_accelerator
      LibGtk.action_disconnect_accelerator(@pointer.as(LibGtk::Action*))
      nil
    end

    def accel_closure
      __return_value = LibGtk.action_get_accel_closure(@pointer.as(LibGtk::Action*))
      GObject::Closure.new(__return_value)
    end

    def accel_path
      __return_value = LibGtk.action_get_accel_path(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def always_show_image
      __return_value = LibGtk.action_get_always_show_image(@pointer.as(LibGtk::Action*))
      __return_value
    end

    def gicon
      __return_value = LibGtk.action_get_gicon(@pointer.as(LibGtk::Action*))
      __return_value
    end

    def icon_name
      __return_value = LibGtk.action_get_icon_name(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def is_important
      __return_value = LibGtk.action_get_is_important(@pointer.as(LibGtk::Action*))
      __return_value
    end

    def label
      __return_value = LibGtk.action_get_label(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name
      __return_value = LibGtk.action_get_name(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def proxies
      __return_value = LibGtk.action_get_proxies(@pointer.as(LibGtk::Action*))
      GLib::SListIterator(Gtk::Widget, LibGtk::Widget**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def sensitive
      __return_value = LibGtk.action_get_sensitive(@pointer.as(LibGtk::Action*))
      __return_value
    end

    def short_label
      __return_value = LibGtk.action_get_short_label(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def stock_id
      __return_value = LibGtk.action_get_stock_id(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def tooltip
      __return_value = LibGtk.action_get_tooltip(@pointer.as(LibGtk::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def visible
      __return_value = LibGtk.action_get_visible(@pointer.as(LibGtk::Action*))
      __return_value
    end

    def visible_horizontal
      __return_value = LibGtk.action_get_visible_horizontal(@pointer.as(LibGtk::Action*))
      __return_value
    end

    def visible_vertical
      __return_value = LibGtk.action_get_visible_vertical(@pointer.as(LibGtk::Action*))
      __return_value
    end

    def sensitive?
      __return_value = LibGtk.action_is_sensitive(@pointer.as(LibGtk::Action*))
      __return_value
    end

    def visible?
      __return_value = LibGtk.action_is_visible(@pointer.as(LibGtk::Action*))
      __return_value
    end

    def accel_group=(accel_group)
      LibGtk.action_set_accel_group(@pointer.as(LibGtk::Action*), accel_group ? accel_group.to_unsafe.as(LibGtk::AccelGroup*) : nil)
      nil
    end

    def accel_path=(accel_path)
      LibGtk.action_set_accel_path(@pointer.as(LibGtk::Action*), accel_path.to_unsafe)
      nil
    end

    def always_show_image=(always_show)
      LibGtk.action_set_always_show_image(@pointer.as(LibGtk::Action*), always_show)
      nil
    end

    def gicon=(icon)
      LibGtk.action_set_gicon(@pointer.as(LibGtk::Action*), icon.to_unsafe.as(LibGio::Icon*))
      nil
    end

    def icon_name=(icon_name)
      LibGtk.action_set_icon_name(@pointer.as(LibGtk::Action*), icon_name.to_unsafe)
      nil
    end

    def is_important=(is_important)
      LibGtk.action_set_is_important(@pointer.as(LibGtk::Action*), is_important)
      nil
    end

    def label=(label)
      LibGtk.action_set_label(@pointer.as(LibGtk::Action*), label.to_unsafe)
      nil
    end

    def sensitive=(sensitive)
      LibGtk.action_set_sensitive(@pointer.as(LibGtk::Action*), sensitive)
      nil
    end

    def short_label=(short_label)
      LibGtk.action_set_short_label(@pointer.as(LibGtk::Action*), short_label.to_unsafe)
      nil
    end

    def stock_id=(stock_id)
      LibGtk.action_set_stock_id(@pointer.as(LibGtk::Action*), stock_id.to_unsafe)
      nil
    end

    def tooltip=(tooltip)
      LibGtk.action_set_tooltip(@pointer.as(LibGtk::Action*), tooltip.to_unsafe)
      nil
    end

    def visible=(visible)
      LibGtk.action_set_visible(@pointer.as(LibGtk::Action*), visible)
      nil
    end

    def visible_horizontal=(visible_horizontal)
      LibGtk.action_set_visible_horizontal(@pointer.as(LibGtk::Action*), visible_horizontal)
      nil
    end

    def visible_vertical=(visible_vertical)
      LibGtk.action_set_visible_vertical(@pointer.as(LibGtk::Action*), visible_vertical)
      nil
    end

    def unblock_activate
      LibGtk.action_unblock_activate(@pointer.as(LibGtk::Action*))
      nil
    end

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

