module GLib
  struct ListIterator(T, L)
    include Iterator(T)

    def initialize(@list : List)
    end

    def next
      if has_next?
        @list = GLib::List.new((@list.to_unsafe.as(LibGLib::List*).value.next_).as(LibGLib::List*))
        T.new @list.data.as(L)
      else
        stop
      end
    end

    def prev
      if has_prev?
        @list = GLib::List.new((@list.to_unsafe.as(LibGLib::List*).value.prev).as(LibGLib::List*))
        T.new @list.data.as(L)
      else
        stop
      end
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
