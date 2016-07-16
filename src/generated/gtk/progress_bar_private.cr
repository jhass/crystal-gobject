module Gtk
  class ProgressBarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ProgressBarPrivate*))
    end

    @gtk_progress_bar_private : LibGtk::ProgressBarPrivate*?
    def initialize(@gtk_progress_bar_private : LibGtk::ProgressBarPrivate*)
    end

    def to_unsafe
      @gtk_progress_bar_private.not_nil!
    end

  end
end

