require "./button"

module Gtk
  class LinkButton < Button
    @pointer : Void*
    def initialize(pointer : LibGtk::LinkButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LinkButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def uri
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "uri", gvalue)
      gvalue.string
    end

    def visited
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visited", gvalue)
      gvalue.boolean
    end

    def self.new(uri) : self
      __return_value = LibGtk.link_button_new(uri.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(uri, label) : self
      __return_value = LibGtk.link_button_new_with_label(uri.to_unsafe, label ? label.to_unsafe : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def uri
      __return_value = LibGtk.link_button_get_uri(@pointer.as(LibGtk::LinkButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def visited
      __return_value = LibGtk.link_button_get_visited(@pointer.as(LibGtk::LinkButton*))
      __return_value
    end

    def uri=(uri)
      LibGtk.link_button_set_uri(@pointer.as(LibGtk::LinkButton*), uri.to_unsafe)
      nil
    end

    def visited=(visited)
      LibGtk.link_button_set_visited(@pointer.as(LibGtk::LinkButton*), visited)
      nil
    end

    alias ActivateLinkSignal = LinkButton -> Bool
    def on_activate_link(&__block : ActivateLinkSignal)
      __callback = ->(_arg0 : LibGtk::LinkButton*) {
       __return_value = __block.call(LinkButton.new(_arg0))
       __return_value
      }
      connect("activate-link", __callback)
    end

  end
end

