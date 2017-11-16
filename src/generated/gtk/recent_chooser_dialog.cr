require "./dialog"

module Gtk
  class RecentChooserDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::RecentChooserDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RecentChooserDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements RecentChooser
  end
end

