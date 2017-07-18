require "./box"

module Gtk
  class ShortcutLabel < Box
    @gtk_shortcut_label : LibGtk::ShortcutLabel*?
    def initialize(@gtk_shortcut_label : LibGtk::ShortcutLabel*)
    end

    def to_unsafe
      @gtk_shortcut_label.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def accelerator
      __return_value = LibGtk.shortcut_label_get_accelerator(to_unsafe.as(LibGtk::ShortcutLabel*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def disabled_text
      __return_value = LibGtk.shortcut_label_get_disabled_text(to_unsafe.as(LibGtk::ShortcutLabel*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(accelerator) : self
      __return_value = LibGtk.shortcut_label_new(accelerator.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def accelerator
      __return_value = LibGtk.shortcut_label_get_accelerator(to_unsafe.as(LibGtk::ShortcutLabel*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def disabled_text
      __return_value = LibGtk.shortcut_label_get_disabled_text(to_unsafe.as(LibGtk::ShortcutLabel*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def accelerator=(accelerator)
      __return_value = LibGtk.shortcut_label_set_accelerator(to_unsafe.as(LibGtk::ShortcutLabel*), accelerator.to_unsafe)
      __return_value
    end

    def disabled_text=(disabled_text)
      __return_value = LibGtk.shortcut_label_set_disabled_text(to_unsafe.as(LibGtk::ShortcutLabel*), disabled_text.to_unsafe)
      __return_value
    end

  end
end

