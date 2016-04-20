module Gtk
  class RecentFilterInfo
    include GObject::WrappedType

    @gtk_recent_filter_info : LibGtk::RecentFilterInfo*?
    def initialize(@gtk_recent_filter_info : LibGtk::RecentFilterInfo*)
    end

    def to_unsafe
      @gtk_recent_filter_info.not_nil!
    end

  end
end

