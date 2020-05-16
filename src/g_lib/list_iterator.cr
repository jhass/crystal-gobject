module GLib
  struct ListIterator(T, L)
    include Iterator(T)

    @start = true
    @end = false

    def initialize(@list : List)
    end

    def next
      return stop if @end

      value = T.new @list.data.as(L)

      if has_next?
        @list = GLib::List.new((@list.to_unsafe.as(LibGLib::List*).value.next_).as(LibGLib::List*))
        @start = false
      else
        @end = true
      end

      value
    end

    def prev
      return stop if @start

      value = T.new @list.data.as(L)

      if has_prev?
        @list = GLib::List.new((@list.to_unsafe.as(LibGLib::List*).value.prev).as(LibGLib::List*))
        @end = false
      else
        @start = true
      end

      value
    end

    def rewind
      while has_prev?
        @list = GLib::List.new((@list.to_unsafe.as(LibGLib::List*).value.prev).as(LibGLib::List*))
      end
    end

    def has_next?
      !@list.to_unsafe.as(LibGLib::List*).value.next_.null?
    end

    def has_prev?
      !@list.to_unsafe.as(LibGLib::List*).value.prev.null?
    end
  end
end
