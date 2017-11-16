require "./dialog"

module Gtk
  class FileChooserDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::FileChooserDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FileChooserDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FileChooser
  end
end

