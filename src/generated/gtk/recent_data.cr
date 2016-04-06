module Gtk
  class RecentData
    include GObject::WrappedType

    def initialize(@gtk_recent_data)
    end

    def to_unsafe
      @gtk_recent_data.not_nil!
    end

  end
end

