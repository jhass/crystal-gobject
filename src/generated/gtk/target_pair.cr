module Gtk
  class TargetPair
    include GObject::WrappedType

    @gtk_target_pair : LibGtk::TargetPair*?
    def initialize(@gtk_target_pair : LibGtk::TargetPair*)
    end

    def to_unsafe
      @gtk_target_pair.not_nil!
    end

  end
end

