module Gtk
  class IconFactory < GObject::Object
    def initialize(@gtk_icon_factory)
    end

    def to_unsafe
      @gtk_icon_factory.not_nil!
    end

    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.icon_factory_new
      Gtk::IconFactory.new(__return_value)
    end

    def self.lookup_default(stock_id)
      __return_value = LibGtk.icon_factory_lookup_default(stock_id)
      Gtk::IconSet.new(__return_value)
    end

    def add(stock_id, icon_set)
      __return_value = LibGtk.icon_factory_add((to_unsafe as LibGtk::IconFactory*), stock_id, (icon_set.to_unsafe as LibGtk::IconSet*))
      __return_value
    end

    def add_default
      __return_value = LibGtk.icon_factory_add_default((to_unsafe as LibGtk::IconFactory*))
      __return_value
    end

    def lookup(stock_id)
      __return_value = LibGtk.icon_factory_lookup((to_unsafe as LibGtk::IconFactory*), stock_id)
      Gtk::IconSet.new(__return_value)
    end

    def remove_default
      __return_value = LibGtk.icon_factory_remove_default((to_unsafe as LibGtk::IconFactory*))
      __return_value
    end

  end
end

