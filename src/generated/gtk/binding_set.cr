module Gtk
  class BindingSet
    include GObject::WrappedType

    def self.new(set_name : String|Nil = nil, priority : Int32|Nil = nil, widget_path_pspecs : Void*|Nil = nil, widget_class_pspecs : Void*|Nil = nil, class_branch_pspecs : Void*|Nil = nil, entries : Gtk::BindingEntry|Nil = nil, current : Gtk::BindingEntry|Nil = nil, parsed : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGtk::BindingSet*)).tap do |object|
        object.set_name = set_name unless set_name.nil?
        object.priority = priority unless priority.nil?
        object.widget_path_pspecs = widget_path_pspecs unless widget_path_pspecs.nil?
        object.widget_class_pspecs = widget_class_pspecs unless widget_class_pspecs.nil?
        object.class_branch_pspecs = class_branch_pspecs unless class_branch_pspecs.nil?
        object.entries = entries unless entries.nil?
        object.current = current unless current.nil?
        object.parsed = parsed unless parsed.nil?
      end
    end

    @gtk_binding_set : LibGtk::BindingSet*?
    def initialize(@gtk_binding_set : LibGtk::BindingSet*)
    end

    def to_unsafe
      @gtk_binding_set.not_nil!.as(Void*)
    end

    def activate(keyval, modifiers, object)
      __return_value = LibGtk.binding_set_activate(to_unsafe.as(LibGtk::BindingSet*), UInt32.new(keyval), modifiers, object.to_unsafe.as(LibGObject::Object*))
      __return_value
    end

    def add_path(path_type, path_pattern, priority)
      __return_value = LibGtk.binding_set_add_path(to_unsafe.as(LibGtk::BindingSet*), path_type, path_pattern.to_unsafe, priority)
      __return_value
    end

    def self.find(set_name)
      __return_value = LibGtk.binding_set_find(set_name.to_unsafe)
      Gtk::BindingSet.new(__return_value) if __return_value
    end

    def set_name
      (raise "Expected string but got null" unless (to_unsafe.value.set_name); ::String.new((to_unsafe.value.set_name)))
    end

    def set_name=(value : String)
      to_unsafe.value.set_name = value.to_unsafe
    end

    def priority
      (to_unsafe.value.priority)
    end

    def priority=(value : Int32)
      to_unsafe.value.priority = Int32.new(value)
    end

    def widget_path_pspecs
      (to_unsafe.value.widget_path_pspecs)
    end

    def widget_path_pspecs=(value : Void*)
      to_unsafe.value.widget_path_pspecs = value
    end

    def widget_class_pspecs
      (to_unsafe.value.widget_class_pspecs)
    end

    def widget_class_pspecs=(value : Void*)
      to_unsafe.value.widget_class_pspecs = value
    end

    def class_branch_pspecs
      (to_unsafe.value.class_branch_pspecs)
    end

    def class_branch_pspecs=(value : Void*)
      to_unsafe.value.class_branch_pspecs = value
    end

    def entries
      Gtk::BindingEntry.new((to_unsafe.value.entries))
    end

    def entries=(value : Gtk::BindingEntry)
      to_unsafe.value.entries = value.to_unsafe.as(LibGtk::BindingEntry*)
    end

    def current
      Gtk::BindingEntry.new((to_unsafe.value.current))
    end

    def current=(value : Gtk::BindingEntry)
      to_unsafe.value.current = value.to_unsafe.as(LibGtk::BindingEntry*)
    end

    def parsed
      (to_unsafe.value.parsed)
    end

    def parsed=(value : UInt32)
      to_unsafe.value.parsed = UInt32.new(value)
    end

  end
end

