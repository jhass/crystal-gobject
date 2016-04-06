module Gst
  class Toc
    include GObject::WrappedType

    def initialize(@gst_toc)
    end

    def to_unsafe
      @gst_toc.not_nil!
    end

    def self.new_internal(scope)
      __return_value = LibGst.toc_new(scope)
      Gst::Toc.new(__return_value)
    end

    def append_entry(entry)
      __return_value = LibGst.toc_append_entry((to_unsafe as LibGst::Toc*), (entry.to_unsafe as LibGst::TocEntry*))
      __return_value
    end

    def dump
      __return_value = LibGst.toc_dump((to_unsafe as LibGst::Toc*))
      __return_value
    end

    def find_entry(uid)
      __return_value = LibGst.toc_find_entry((to_unsafe as LibGst::Toc*), uid)
      Gst::TocEntry.new(__return_value) if __return_value
    end

    def entries
      __return_value = LibGst.toc_get_entries((to_unsafe as LibGst::Toc*))
      __return_value
    end

    def scope
      __return_value = LibGst.toc_get_scope((to_unsafe as LibGst::Toc*))
      __return_value
    end

    def tags
      __return_value = LibGst.toc_get_tags((to_unsafe as LibGst::Toc*))
      Gst::TagList.new(__return_value)
    end

    def merge_tags(tags, mode)
      __return_value = LibGst.toc_merge_tags((to_unsafe as LibGst::Toc*), tags && (tags.to_unsafe as LibGst::TagList*), mode)
      __return_value
    end

    def tags=(tags)
      __return_value = LibGst.toc_set_tags((to_unsafe as LibGst::Toc*), tags && (tags.to_unsafe as LibGst::TagList*))
      __return_value
    end

  end
end

