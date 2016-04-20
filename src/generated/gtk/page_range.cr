module Gtk
  class PageRange
    include GObject::WrappedType

    @gtk_page_range : LibGtk::PageRange*?
    def initialize(@gtk_page_range : LibGtk::PageRange*)
    end

    def to_unsafe
      @gtk_page_range.not_nil!
    end

  end
end

