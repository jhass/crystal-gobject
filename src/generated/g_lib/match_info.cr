module GLib
  class MatchInfo
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::MatchInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::MatchInfo*)
    end

    def expand_references(string_to_expand) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.match_info_expand_references(@pointer.as(LibGLib::MatchInfo*), string_to_expand.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def fetch(match_num)
      __return_value = LibGLib.match_info_fetch(@pointer.as(LibGLib::MatchInfo*), Int32.new(match_num))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def fetch_all
      __return_value = LibGLib.match_info_fetch_all(@pointer.as(LibGLib::MatchInfo*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def fetch_named(name)
      __return_value = LibGLib.match_info_fetch_named(@pointer.as(LibGLib::MatchInfo*), name.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def fetch_named_pos(name, start_pos, end_pos)
      __return_value = LibGLib.match_info_fetch_named_pos(@pointer.as(LibGLib::MatchInfo*), name.to_unsafe, start_pos, end_pos)
      __return_value
    end

    def fetch_pos(match_num, start_pos, end_pos)
      __return_value = LibGLib.match_info_fetch_pos(@pointer.as(LibGLib::MatchInfo*), Int32.new(match_num), start_pos, end_pos)
      __return_value
    end

    def free
      LibGLib.match_info_free(@pointer.as(LibGLib::MatchInfo*))
      nil
    end

    def match_count
      __return_value = LibGLib.match_info_get_match_count(@pointer.as(LibGLib::MatchInfo*))
      __return_value
    end

    def regex
      __return_value = LibGLib.match_info_get_regex(@pointer.as(LibGLib::MatchInfo*))
      GLib::Regex.new(__return_value)
    end

    def string
      __return_value = LibGLib.match_info_get_string(@pointer.as(LibGLib::MatchInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def partial_match?
      __return_value = LibGLib.match_info_is_partial_match(@pointer.as(LibGLib::MatchInfo*))
      __return_value
    end

    def matches
      __return_value = LibGLib.match_info_matches(@pointer.as(LibGLib::MatchInfo*))
      __return_value
    end

    def next # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.match_info_next(@pointer.as(LibGLib::MatchInfo*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def ref
      __return_value = LibGLib.match_info_ref(@pointer.as(LibGLib::MatchInfo*))
      GLib::MatchInfo.new(__return_value)
    end

    def unref
      LibGLib.match_info_unref(@pointer.as(LibGLib::MatchInfo*))
      nil
    end

  end
end

