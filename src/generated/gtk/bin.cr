require "./container"

module Gtk
  class Bin < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::Bin*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Bin*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def child
      __return_value = LibGtk.bin_get_child(@pointer.as(LibGtk::Bin*))
      Gtk::Widget.new(__return_value) if __return_value
    end

  end
end

