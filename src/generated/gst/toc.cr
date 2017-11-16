module Gst
  class Toc
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::Toc*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Toc*)
    end

    def self.new(scope : Gst::TocScope) : self
      __return_value = LibGst.toc_new(scope)
      cast Gst::Toc.new(__return_value)
    end

    def append_entry(entry)
      LibGst.toc_append_entry(@pointer.as(LibGst::Toc*), entry.to_unsafe.as(LibGst::TocEntry*))
      nil
    end

    def dump
      LibGst.toc_dump(@pointer.as(LibGst::Toc*))
      nil
    end

    def find_entry(uid)
      __return_value = LibGst.toc_find_entry(@pointer.as(LibGst::Toc*), uid.to_unsafe)
      Gst::TocEntry.new(__return_value) if __return_value
    end

    def entries
      __return_value = LibGst.toc_get_entries(@pointer.as(LibGst::Toc*))
      GLib::ListIterator(Gst::TocEntry, LibGst::TocEntry*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def scope
      __return_value = LibGst.toc_get_scope(@pointer.as(LibGst::Toc*))
      __return_value
    end

    def tags
      __return_value = LibGst.toc_get_tags(@pointer.as(LibGst::Toc*))
      Gst::TagList.new(__return_value)
    end

    def merge_tags(tags, mode : Gst::TagMergeMode)
      LibGst.toc_merge_tags(@pointer.as(LibGst::Toc*), tags ? tags.to_unsafe.as(LibGst::TagList*) : nil, mode)
      nil
    end

    def tags=(tags)
      LibGst.toc_set_tags(@pointer.as(LibGst::Toc*), tags ? tags.to_unsafe.as(LibGst::TagList*) : nil)
      nil
    end

  end
end

