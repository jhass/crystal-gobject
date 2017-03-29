module Pango
  class AttrIterator
    include GObject::WrappedType

    @pango_attr_iterator : LibPango::AttrIterator*?
    def initialize(@pango_attr_iterator : LibPango::AttrIterator*)
    end

    def to_unsafe
      @pango_attr_iterator.not_nil!
    end

    def destroy
      __return_value = LibPango.attr_iterator_destroy(to_unsafe.as(LibPango::AttrIterator*))
      __return_value
    end

    def attrs
      __return_value = LibPango.attr_iterator_get_attrs(to_unsafe.as(LibPango::AttrIterator*))
      GLib::SListIterator(Pango::Attribute, LibPango::Attribute*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def font(desc, language, extra_attrs)
      __return_value = LibPango.attr_iterator_get_font(to_unsafe.as(LibPango::AttrIterator*), desc.to_unsafe.as(LibPango::FontDescription*), language ? language.to_unsafe.as(LibPango::Language*) : nil, extra_attrs ? extra_attrs : nil)
      __return_value
    end

    def next
      __return_value = LibPango.attr_iterator_next(to_unsafe.as(LibPango::AttrIterator*))
      __return_value
    end

    def range(start, end)
      __return_value = LibPango.attr_iterator_range(to_unsafe.as(LibPango::AttrIterator*), start, end)
      __return_value
    end

  end
end

