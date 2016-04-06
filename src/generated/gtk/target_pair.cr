module Gtk
  class TargetPair
    include GObject::WrappedType

    def initialize(@gtk_target_pair)
    end

    def to_unsafe
      @gtk_target_pair.not_nil!
    end

  end
end

