module Gtk
  class PageRange
    include GObject::WrappedType

    def initialize(@gtk_page_range)
    end

    def to_unsafe
      @gtk_page_range.not_nil!
    end

  end
end

