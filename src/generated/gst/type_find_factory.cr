require "./plugin_feature"

module Gst
  class TypeFindFactory < PluginFeature
    @gst_type_find_factory : LibGst::TypeFindFactory*?
    def initialize(@gst_type_find_factory : LibGst::TypeFindFactory*)
    end

    def to_unsafe
      @gst_type_find_factory.not_nil!
    end

    def self.list
      __return_value = LibGst.type_find_factory_get_list
      GLib::ListIterator(Gst::TypeFindFactory, LibGst::TypeFindFactory*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def call_function(find)
      LibGst.type_find_factory_call_function(to_unsafe.as(LibGst::TypeFindFactory*), find.to_unsafe.as(LibGst::TypeFind*))
      nil
    end

    def caps
      __return_value = LibGst.type_find_factory_get_caps(to_unsafe.as(LibGst::TypeFindFactory*))
      Gst::Caps.new(__return_value)
    end

    def extensions
      __return_value = LibGst.type_find_factory_get_extensions(to_unsafe.as(LibGst::TypeFindFactory*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) } if __return_value
    end

    def has_function
      __return_value = LibGst.type_find_factory_has_function(to_unsafe.as(LibGst::TypeFindFactory*))
      __return_value
    end

  end
end

