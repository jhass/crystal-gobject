module Gst
  module TagSetter
    def add_tag_value(mode : Gst::TagMergeMode, tag, value)
      LibGst.tag_setter_add_tag_value(@pointer.as(LibGst::TagSetter*), mode, tag.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def tag_list
      __return_value = LibGst.tag_setter_get_tag_list(@pointer.as(LibGst::TagSetter*))
      Gst::TagList.new(__return_value) if __return_value
    end

    def tag_merge_mode
      __return_value = LibGst.tag_setter_get_tag_merge_mode(@pointer.as(LibGst::TagSetter*))
      __return_value
    end

    def merge_tags(list, mode : Gst::TagMergeMode)
      LibGst.tag_setter_merge_tags(@pointer.as(LibGst::TagSetter*), list.to_unsafe.as(LibGst::TagList*), mode)
      nil
    end

    def reset_tags
      LibGst.tag_setter_reset_tags(@pointer.as(LibGst::TagSetter*))
      nil
    end

    def tag_merge_mode=(mode : Gst::TagMergeMode)
      LibGst.tag_setter_set_tag_merge_mode(@pointer.as(LibGst::TagSetter*), mode)
      nil
    end

  end
end

