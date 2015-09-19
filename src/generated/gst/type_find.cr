module Gst
  class TypeFind
    include GObject::WrappedType

    def initialize @gst_type_find
    end

    def to_unsafe
      @gst_type_find.not_nil!
    end

    def length
      __return_value = LibGst.type_find_get_length((to_unsafe as LibGst::TypeFind*))
      __return_value
    end

    def peek(offset, size)
      __return_value = LibGst.type_find_peek((to_unsafe as LibGst::TypeFind*), Int64.new(offset), UInt32.new(size))
      PointerIterator.new(__return_value) {|__item_80| __item_80 } if __return_value
    end

    def suggest(probability, caps)
      __return_value = LibGst.type_find_suggest((to_unsafe as LibGst::TypeFind*), UInt32.new(probability), (caps.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def self.register(plugin, name, rank, func : LibGst::TypeFindFunction, extensions, possible_caps, data, data_notify : LibGLib::DestroyNotify)
      __return_value = LibGst.type_find_register(plugin && (plugin.to_unsafe as LibGst::Plugin*), name, UInt32.new(rank), func, extensions && extensions, (possible_caps.to_unsafe as LibGst::Caps*), data, data_notify)
      __return_value
    end

  end
end

