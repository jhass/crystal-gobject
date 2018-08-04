module Pango
  class AttrIterator
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibPango::AttrIterator*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrIterator*)
    end

    def destroy
      LibPango.attr_iterator_destroy(@pointer.as(LibPango::AttrIterator*))
      nil
    end

    def attrs
      __return_value = LibPango.attr_iterator_get_attrs(@pointer.as(LibPango::AttrIterator*))
      GLib::SListIterator(Pango::Attribute, LibPango::Attribute*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def font(desc, language, extra_attrs)
      LibPango.attr_iterator_get_font(@pointer.as(LibPango::AttrIterator*), desc.to_unsafe.as(LibPango::FontDescription*), language ? language.to_unsafe.as(LibPango::Language*) : nil, extra_attrs ? extra_attrs : nil)
      nil
    end

    def next
      __return_value = LibPango.attr_iterator_next(@pointer.as(LibPango::AttrIterator*))
      __return_value
    end

    def range(start, _end)
      LibPango.attr_iterator_range(@pointer.as(LibPango::AttrIterator*), start, _end)
      nil
    end

  end
end

