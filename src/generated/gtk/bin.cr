require "./container"

module Gtk
  class Bin < Container
    @gtk_bin : LibGtk::Bin*?
    def initialize(@gtk_bin : LibGtk::Bin*)
    end

    def to_unsafe
      @gtk_bin.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def child
      __return_value = LibGtk.bin_get_child(to_unsafe.as(LibGtk::Bin*))
      Gtk::Widget.new(__return_value)
    end

  end
end

