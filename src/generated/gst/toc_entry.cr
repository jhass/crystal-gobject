module Gst
  class TocEntry
    include GObject::WrappedType

    def initialize(@gst_toc_entry)
    end

    def to_unsafe
      @gst_toc_entry.not_nil!
    end

    def self.new_internal(type, uid)
      __return_value = LibGst.toc_entry_new(type, uid)
      Gst::TocEntry.new(__return_value)
    end

    def append_sub_entry(subentry)
      __return_value = LibGst.toc_entry_append_sub_entry((to_unsafe as LibGst::TocEntry*), (subentry.to_unsafe as LibGst::TocEntry*))
      __return_value
    end

    def entry_type
      __return_value = LibGst.toc_entry_get_entry_type((to_unsafe as LibGst::TocEntry*))
      __return_value
    end

    def loop(loop_type, repeat_count)
      __return_value = LibGst.toc_entry_get_loop((to_unsafe as LibGst::TocEntry*), loop_type, Int32.new(repeat_count))
      __return_value
    end

    def parent
      __return_value = LibGst.toc_entry_get_parent((to_unsafe as LibGst::TocEntry*))
      Gst::TocEntry.new(__return_value)
    end

    def start_stop_times(start, stop)
      __return_value = LibGst.toc_entry_get_start_stop_times((to_unsafe as LibGst::TocEntry*), Int64.new(start), Int64.new(stop))
      __return_value
    end

    def sub_entries
      __return_value = LibGst.toc_entry_get_sub_entries((to_unsafe as LibGst::TocEntry*))
      __return_value
    end

    def tags
      __return_value = LibGst.toc_entry_get_tags((to_unsafe as LibGst::TocEntry*))
      Gst::TagList.new(__return_value)
    end

    def toc
      __return_value = LibGst.toc_entry_get_toc((to_unsafe as LibGst::TocEntry*))
      Gst::Toc.new(__return_value)
    end

    def uid
      __return_value = LibGst.toc_entry_get_uid((to_unsafe as LibGst::TocEntry*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def alternative?
      __return_value = LibGst.toc_entry_is_alternative((to_unsafe as LibGst::TocEntry*))
      __return_value
    end

    def sequence?
      __return_value = LibGst.toc_entry_is_sequence((to_unsafe as LibGst::TocEntry*))
      __return_value
    end

    def merge_tags(tags, mode)
      __return_value = LibGst.toc_entry_merge_tags((to_unsafe as LibGst::TocEntry*), tags && (tags.to_unsafe as LibGst::TagList*), mode)
      __return_value
    end

    def set_loop(loop_type, repeat_count)
      __return_value = LibGst.toc_entry_set_loop((to_unsafe as LibGst::TocEntry*), loop_type, Int32.new(repeat_count))
      __return_value
    end

    def set_start_stop_times(start, stop)
      __return_value = LibGst.toc_entry_set_start_stop_times((to_unsafe as LibGst::TocEntry*), Int64.new(start), Int64.new(stop))
      __return_value
    end

    def tags=(tags)
      __return_value = LibGst.toc_entry_set_tags((to_unsafe as LibGst::TocEntry*), tags && (tags.to_unsafe as LibGst::TagList*))
      __return_value
    end

  end
end

