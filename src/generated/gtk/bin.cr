require "./container"

module Gtk
  class Bin < Container
    def initialize(@gtk_bin)
    end

    def to_unsafe
      @gtk_bin.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def child
      __return_value = LibGtk.bin_get_child((to_unsafe as LibGtk::Bin*))
      Gtk::Widget.new(__return_value)
    end

  end
end

