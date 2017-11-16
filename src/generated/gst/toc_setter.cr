module Gst
  module TocSetter
    def toc
      __return_value = LibGst.toc_setter_get_toc(@pointer.as(LibGst::TocSetter*))
      Gst::Toc.new(__return_value) if __return_value
    end

    def reset
      LibGst.toc_setter_reset(@pointer.as(LibGst::TocSetter*))
      nil
    end

    def toc=(toc)
      LibGst.toc_setter_set_toc(@pointer.as(LibGst::TocSetter*), toc ? toc.to_unsafe.as(LibGst::Toc*) : nil)
      nil
    end

  end
end

