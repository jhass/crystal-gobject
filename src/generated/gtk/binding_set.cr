module Gtk
  class BindingSet
    include GObject::WrappedType

    def initialize(@gtk_binding_set)
    end

    def to_unsafe
      @gtk_binding_set.not_nil!
    end

    def activate(keyval, modifiers, object)
      __return_value = LibGtk.binding_set_activate((to_unsafe as LibGtk::BindingSet*), UInt32.new(keyval), modifiers, (object.to_unsafe as LibGObject::Object*))
      __return_value
    end

    def add_path(path_type, path_pattern, priority)
      __return_value = LibGtk.binding_set_add_path((to_unsafe as LibGtk::BindingSet*), path_type, path_pattern, priority)
      __return_value
    end

    def self.find(set_name)
      __return_value = LibGtk.binding_set_find(set_name)
      Gtk::BindingSet.new(__return_value)
    end

  end
end

