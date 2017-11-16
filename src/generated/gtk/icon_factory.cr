module Gtk
  class IconFactory < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::IconFactory*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::IconFactory*)
    end

    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.icon_factory_new
      cast Gtk::IconFactory.new(__return_value)
    end

    def self.lookup_default(stock_id)
      __return_value = LibGtk.icon_factory_lookup_default(stock_id.to_unsafe)
      Gtk::IconSet.new(__return_value)
    end

    def add(stock_id, icon_set)
      LibGtk.icon_factory_add(@pointer.as(LibGtk::IconFactory*), stock_id.to_unsafe, icon_set.to_unsafe.as(LibGtk::IconSet*))
      nil
    end

    def add_default
      LibGtk.icon_factory_add_default(@pointer.as(LibGtk::IconFactory*))
      nil
    end

    def lookup(stock_id)
      __return_value = LibGtk.icon_factory_lookup(@pointer.as(LibGtk::IconFactory*), stock_id.to_unsafe)
      Gtk::IconSet.new(__return_value)
    end

    def remove_default
      LibGtk.icon_factory_remove_default(@pointer.as(LibGtk::IconFactory*))
      nil
    end

  end
end

