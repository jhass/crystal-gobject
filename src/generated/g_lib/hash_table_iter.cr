module GLib
  class HashTableIter
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      super(ptr.as(LibGLib::HashTableIter*))
    end

    @g_lib_hash_table_iter : LibGLib::HashTableIter*?
    def initialize(@g_lib_hash_table_iter : LibGLib::HashTableIter*)
    end

    def to_unsafe
      @g_lib_hash_table_iter.not_nil!
    end

    def init(hash_table)
      __return_value = LibGLib.hash_table_iter_init(to_unsafe.as(LibGLib::HashTableIter*), hash_table)
      __return_value
    end

    def next(key, value)
      __return_value = LibGLib.hash_table_iter_next(to_unsafe.as(LibGLib::HashTableIter*), key, value)
      __return_value
    end

    def remove
      __return_value = LibGLib.hash_table_iter_remove(to_unsafe.as(LibGLib::HashTableIter*))
      __return_value
    end

    def replace(value)
      __return_value = LibGLib.hash_table_iter_replace(to_unsafe.as(LibGLib::HashTableIter*), value ? value : nil)
      __return_value
    end

    def steal
      __return_value = LibGLib.hash_table_iter_steal(to_unsafe.as(LibGLib::HashTableIter*))
      __return_value
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

