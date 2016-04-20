module Gtk
  class RecentData
    include GObject::WrappedType

    @gtk_recent_data : LibGtk::RecentData*?
    def initialize(@gtk_recent_data : LibGtk::RecentData*)
    end

    def to_unsafe
      @gtk_recent_data.not_nil!
    end

  end
end

