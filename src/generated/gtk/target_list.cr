module Gtk
  class TargetList
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TargetList*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TargetList*)
    end

    def self.new(targets, ntargets) : self
      __return_value = LibGtk.target_list_new(targets ? targets : nil, UInt32.new(ntargets))
      cast Gtk::TargetList.new(__return_value)
    end

    def add(target, flags, info)
      LibGtk.target_list_add(@pointer.as(LibGtk::TargetList*), target.to_unsafe.as(LibGdk::Atom*), UInt32.new(flags), UInt32.new(info))
      nil
    end

    def add_image_targets(info, writable)
      LibGtk.target_list_add_image_targets(@pointer.as(LibGtk::TargetList*), UInt32.new(info), writable)
      nil
    end

    def add_rich_text_targets(info, deserializable, buffer)
      LibGtk.target_list_add_rich_text_targets(@pointer.as(LibGtk::TargetList*), UInt32.new(info), deserializable, buffer.to_unsafe.as(LibGtk::TextBuffer*))
      nil
    end

    def add_table(targets, ntargets)
      LibGtk.target_list_add_table(@pointer.as(LibGtk::TargetList*), targets, UInt32.new(ntargets))
      nil
    end

    def add_text_targets(info)
      LibGtk.target_list_add_text_targets(@pointer.as(LibGtk::TargetList*), UInt32.new(info))
      nil
    end

    def add_uri_targets(info)
      LibGtk.target_list_add_uri_targets(@pointer.as(LibGtk::TargetList*), UInt32.new(info))
      nil
    end

    def find(target, info)
      __return_value = LibGtk.target_list_find(@pointer.as(LibGtk::TargetList*), target.to_unsafe.as(LibGdk::Atom*), info)
      __return_value
    end

    def ref
      __return_value = LibGtk.target_list_ref(@pointer.as(LibGtk::TargetList*))
      Gtk::TargetList.new(__return_value)
    end

    def remove(target)
      LibGtk.target_list_remove(@pointer.as(LibGtk::TargetList*), target.to_unsafe.as(LibGdk::Atom*))
      nil
    end

    def unref
      LibGtk.target_list_unref(@pointer.as(LibGtk::TargetList*))
      nil
    end

  end
end

