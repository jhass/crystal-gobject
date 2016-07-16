module GLib
  struct SListIterator(T, L)
    include Iterator(T)

    def initialize(@s_list : SList)
    end

    def next
      if has_next?
        @s_list = GLib::SList.new((@s_list.to_unsafe.as(LibGLib::SList*).value.next_).as(LibGLib::SList*))
        T.new @s_list.data.as(L)
      else
        stop
      end
    end

    def has_next?
      !@s_list.to_unsafe.as(LibGLib::SList*).value.next_.null?
    end
  end
end
