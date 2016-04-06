module Gtk
  class RecentFilterInfo
    include GObject::WrappedType

    def initialize(@gtk_recent_filter_info)
    end

    def to_unsafe
      @gtk_recent_filter_info.not_nil!
    end

  end
end

