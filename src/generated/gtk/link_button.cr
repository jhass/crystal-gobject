require "./button"

module Gtk
  class LinkButton < Button
    def initialize @gtk_link_button
    end

    def to_unsafe
      @gtk_link_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable


    def self.new_internal(uri)
      __return_value = LibGtk.link_button_new(uri)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(uri, label)
      __return_value = LibGtk.link_button_new_with_label(uri, label && label)
      Gtk::Widget.new(__return_value)
    end

    def uri
      __return_value = LibGtk.link_button_get_uri((to_unsafe as LibGtk::LinkButton*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def visited
      __return_value = LibGtk.link_button_get_visited((to_unsafe as LibGtk::LinkButton*))
      __return_value
    end

    def uri=(uri)
      __return_value = LibGtk.link_button_set_uri((to_unsafe as LibGtk::LinkButton*), uri)
      __return_value
    end

    def visited=(visited)
      __return_value = LibGtk.link_button_set_visited((to_unsafe as LibGtk::LinkButton*), Bool.cast(visited))
      __return_value
    end

  end
end

