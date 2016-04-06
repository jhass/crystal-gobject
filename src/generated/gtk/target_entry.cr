module Gtk
  class TargetEntry
    include GObject::WrappedType

    def initialize(@gtk_target_entry)
    end

    def to_unsafe
      @gtk_target_entry.not_nil!
    end

    def self.new_internal(target, flags, info)
      __return_value = LibGtk.target_entry_new(target, UInt32.new(flags), UInt32.new(info))
      Gtk::TargetEntry.new(__return_value)
    end

    def copy
      __return_value = LibGtk.target_entry_copy((to_unsafe as LibGtk::TargetEntry*))
      Gtk::TargetEntry.new(__return_value)
    end

    def free
      __return_value = LibGtk.target_entry_free((to_unsafe as LibGtk::TargetEntry*))
      __return_value
    end

  end
end

