module Gst
  class TocEntry
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::TocEntry*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::TocEntry*)
    end

    def self.new(type : Gst::TocEntryType, uid) : self
      __return_value = LibGst.toc_entry_new(type, uid.to_unsafe)
      cast Gst::TocEntry.new(__return_value)
    end

    def append_sub_entry(subentry)
      LibGst.toc_entry_append_sub_entry(@pointer.as(LibGst::TocEntry*), subentry.to_unsafe.as(LibGst::TocEntry*))
      nil
    end

    def entry_type
      __return_value = LibGst.toc_entry_get_entry_type(@pointer.as(LibGst::TocEntry*))
      __return_value
    end

    def loop(loop_type : Gst::TocLoopType?, repeat_count)
      __return_value = LibGst.toc_entry_get_loop(@pointer.as(LibGst::TocEntry*), loop_type, repeat_count)
      __return_value
    end

    def parent
      __return_value = LibGst.toc_entry_get_parent(@pointer.as(LibGst::TocEntry*))
      Gst::TocEntry.new(__return_value) if __return_value
    end

    def start_stop_times(start, stop)
      __return_value = LibGst.toc_entry_get_start_stop_times(@pointer.as(LibGst::TocEntry*), start, stop)
      __return_value
    end

    def sub_entries
      __return_value = LibGst.toc_entry_get_sub_entries(@pointer.as(LibGst::TocEntry*))
      GLib::ListIterator(Gst::TocEntry, LibGst::TocEntry*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def tags
      __return_value = LibGst.toc_entry_get_tags(@pointer.as(LibGst::TocEntry*))
      Gst::TagList.new(__return_value)
    end

    def toc
      __return_value = LibGst.toc_entry_get_toc(@pointer.as(LibGst::TocEntry*))
      Gst::Toc.new(__return_value)
    end

    def uid
      __return_value = LibGst.toc_entry_get_uid(@pointer.as(LibGst::TocEntry*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def alternative?
      __return_value = LibGst.toc_entry_is_alternative(@pointer.as(LibGst::TocEntry*))
      __return_value
    end

    def sequence?
      __return_value = LibGst.toc_entry_is_sequence(@pointer.as(LibGst::TocEntry*))
      __return_value
    end

    def merge_tags(tags, mode : Gst::TagMergeMode)
      LibGst.toc_entry_merge_tags(@pointer.as(LibGst::TocEntry*), tags ? tags.to_unsafe.as(LibGst::TagList*) : nil, mode)
      nil
    end

    def set_loop(loop_type : Gst::TocLoopType, repeat_count)
      LibGst.toc_entry_set_loop(@pointer.as(LibGst::TocEntry*), loop_type, Int32.new(repeat_count))
      nil
    end

    def set_start_stop_times(start, stop)
      LibGst.toc_entry_set_start_stop_times(@pointer.as(LibGst::TocEntry*), Int64.new(start), Int64.new(stop))
      nil
    end

    def tags=(tags)
      LibGst.toc_entry_set_tags(@pointer.as(LibGst::TocEntry*), tags ? tags.to_unsafe.as(LibGst::TagList*) : nil)
      nil
    end

  end
end

