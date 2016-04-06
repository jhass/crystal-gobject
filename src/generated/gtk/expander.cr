require "./bin"

module Gtk
  class Expander < Bin
    def initialize(@gtk_expander)
    end

    def to_unsafe
      @gtk_expander.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable








    def self.new_internal(label)
      __return_value = LibGtk.expander_new(label)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label)
      __return_value = LibGtk.expander_new_with_mnemonic(label && label)
      Gtk::Widget.new(__return_value)
    end

    def expanded
      __return_value = LibGtk.expander_get_expanded((to_unsafe as LibGtk::Expander*))
      __return_value
    end

    def label
      __return_value = LibGtk.expander_get_label((to_unsafe as LibGtk::Expander*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def label_fill
      __return_value = LibGtk.expander_get_label_fill((to_unsafe as LibGtk::Expander*))
      __return_value
    end

    def label_widget
      __return_value = LibGtk.expander_get_label_widget((to_unsafe as LibGtk::Expander*))
      Gtk::Widget.new(__return_value)
    end

    def resize_toplevel
      __return_value = LibGtk.expander_get_resize_toplevel((to_unsafe as LibGtk::Expander*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.expander_get_spacing((to_unsafe as LibGtk::Expander*))
      __return_value
    end

    def use_markup
      __return_value = LibGtk.expander_get_use_markup((to_unsafe as LibGtk::Expander*))
      __return_value
    end

    def use_underline
      __return_value = LibGtk.expander_get_use_underline((to_unsafe as LibGtk::Expander*))
      __return_value
    end

    def expanded=(expanded)
      __return_value = LibGtk.expander_set_expanded((to_unsafe as LibGtk::Expander*), expanded)
      __return_value
    end

    def label=(label)
      __return_value = LibGtk.expander_set_label((to_unsafe as LibGtk::Expander*), label && label)
      __return_value
    end

    def label_fill=(label_fill)
      __return_value = LibGtk.expander_set_label_fill((to_unsafe as LibGtk::Expander*), label_fill)
      __return_value
    end

    def label_widget=(label_widget)
      __return_value = LibGtk.expander_set_label_widget((to_unsafe as LibGtk::Expander*), label_widget && (label_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def resize_toplevel=(resize_toplevel)
      __return_value = LibGtk.expander_set_resize_toplevel((to_unsafe as LibGtk::Expander*), resize_toplevel)
      __return_value
    end

    def spacing=(spacing)
      __return_value = LibGtk.expander_set_spacing((to_unsafe as LibGtk::Expander*), Int32.new(spacing))
      __return_value
    end

    def use_markup=(use_markup)
      __return_value = LibGtk.expander_set_use_markup((to_unsafe as LibGtk::Expander*), use_markup)
      __return_value
    end

    def use_underline=(use_underline)
      __return_value = LibGtk.expander_set_use_underline((to_unsafe as LibGtk::Expander*), use_underline)
      __return_value
    end

    alias ActivateSignal = Expander -> 
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGtk::Expander*) {
       __return_value = __block.call(Expander.new(_arg0))
       __return_value
      }
      connect("activate", __callback)
    end

  end
end

