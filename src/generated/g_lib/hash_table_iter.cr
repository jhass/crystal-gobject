module GLib
  class HashTableIter
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      super(ptr.as(LibGLib::HashTableIter*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::HashTableIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::HashTableIter*)
    end

    def init(hash_table)
      LibGLib.hash_table_iter_init(@pointer.as(LibGLib::HashTableIter*), hash_table)
      nil
    end

    def next(key, value)
      __return_value = LibGLib.hash_table_iter_next(@pointer.as(LibGLib::HashTableIter*), key, value)
      __return_value
    end

    def remove
      LibGLib.hash_table_iter_remove(@pointer.as(LibGLib::HashTableIter*))
      nil
    end

    def replace(value)
      LibGLib.hash_table_iter_replace(@pointer.as(LibGLib::HashTableIter*), value ? value : nil)
      nil
    end

    def steal
      LibGLib.hash_table_iter_steal(@pointer.as(LibGLib::HashTableIter*))
      nil
    end

    def dummy1
      (to_unsafe.as(LibGLib::HashTableIter*).value.dummy1)
    end

    def dummy2
      (to_unsafe.as(LibGLib::HashTableIter*).value.dummy2)
    end

    def dummy3
      (to_unsafe.as(LibGLib::HashTableIter*).value.dummy3)
    end

    def dummy4
      (to_unsafe.as(LibGLib::HashTableIter*).value.dummy4)
    end

    def dummy5
      (to_unsafe.as(LibGLib::HashTableIter*).value.dummy5)
    end

    def dummy6
      (to_unsafe.as(LibGLib::HashTableIter*).value.dummy6)
    end

  end
end

