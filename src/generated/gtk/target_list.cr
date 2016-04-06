module Gtk
  class TargetList
    include GObject::WrappedType

    def initialize(@gtk_target_list)
    end

    def to_unsafe
      @gtk_target_list.not_nil!
    end

    def self.new_internal(targets, ntargets)
      __return_value = LibGtk.target_list_new(targets && targets, UInt32.new(ntargets))
      Gtk::TargetList.new(__return_value)
    end

    def add(target, flags, info)
      __return_value = LibGtk.target_list_add((to_unsafe as LibGtk::TargetList*), (target.to_unsafe as LibGdk::Atom*), UInt32.new(flags), UInt32.new(info))
      __return_value
    end

    def add_image_targets(info, writable)
      __return_value = LibGtk.target_list_add_image_targets((to_unsafe as LibGtk::TargetList*), UInt32.new(info), writable)
      __return_value
    end

    def add_rich_text_targets(info, deserializable, buffer)
      __return_value = LibGtk.target_list_add_rich_text_targets((to_unsafe as LibGtk::TargetList*), UInt32.new(info), deserializable, (buffer.to_unsafe as LibGtk::TextBuffer*))
      __return_value
    end

    def add_table(targets, ntargets)
      __return_value = LibGtk.target_list_add_table((to_unsafe as LibGtk::TargetList*), targets, UInt32.new(ntargets))
      __return_value
    end

    def add_text_targets(info)
      __return_value = LibGtk.target_list_add_text_targets((to_unsafe as LibGtk::TargetList*), UInt32.new(info))
      __return_value
    end

    def add_uri_targets(info)
      __return_value = LibGtk.target_list_add_uri_targets((to_unsafe as LibGtk::TargetList*), UInt32.new(info))
      __return_value
    end

    def find(target, info)
      __return_value = LibGtk.target_list_find((to_unsafe as LibGtk::TargetList*), (target.to_unsafe as LibGdk::Atom*), UInt32.new(info))
      __return_value
    end

    def ref
      __return_value = LibGtk.target_list_ref((to_unsafe as LibGtk::TargetList*))
      Gtk::TargetList.new(__return_value)
    end

    def remove(target)
      __return_value = LibGtk.target_list_remove((to_unsafe as LibGtk::TargetList*), (target.to_unsafe as LibGdk::Atom*))
      __return_value
    end

    def unref
      __return_value = LibGtk.target_list_unref((to_unsafe as LibGtk::TargetList*))
      __return_value
    end

  end
end

