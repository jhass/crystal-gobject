module GLib
  struct SListIterator(T, L)
    include Iterator(T)

    @end = false

    def initialize(@s_list : SList)
    end

    def next
      return stop if @end

      value = T.new @s_list.data.as(L)

      if has_next?
        @s_list = GLib::SList.new((@s_list.to_unsafe.as(LibGLib::SList*).value.next_).as(LibGLib::SList*))
      else
        @end = true
      end

      value
    end

    def has_next?
      !@s_list.to_unsafe.as(LibGLib::SList*).value.next_.null?
    end
  end
end
