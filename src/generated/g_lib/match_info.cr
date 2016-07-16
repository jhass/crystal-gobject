module GLib
  class MatchInfo
    include GObject::WrappedType

    @g_lib_match_info : LibGLib::MatchInfo*?
    def initialize(@g_lib_match_info : LibGLib::MatchInfo*)
    end

    def to_unsafe
      @g_lib_match_info.not_nil!.as(Void*)
    end

    def expand_references(string_to_expand)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.match_info_expand_references(to_unsafe.as(LibGLib::MatchInfo*), string_to_expand.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def fetch(match_num)
      __return_value = LibGLib.match_info_fetch(to_unsafe.as(LibGLib::MatchInfo*), Int32.new(match_num))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def fetch_all
      __return_value = LibGLib.match_info_fetch_all(to_unsafe.as(LibGLib::MatchInfo*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def fetch_named(name)
      __return_value = LibGLib.match_info_fetch_named(to_unsafe.as(LibGLib::MatchInfo*), name.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def fetch_named_pos(name, start_pos, end_pos)
      __return_value = LibGLib.match_info_fetch_named_pos(to_unsafe.as(LibGLib::MatchInfo*), name.to_unsafe, start_pos, end_pos)
      __return_value
    end

    def fetch_pos(match_num, start_pos, end_pos)
      __return_value = LibGLib.match_info_fetch_pos(to_unsafe.as(LibGLib::MatchInfo*), Int32.new(match_num), start_pos, end_pos)
      __return_value
    end

    def free
      __return_value = LibGLib.match_info_free(to_unsafe.as(LibGLib::MatchInfo*))
      __return_value
    end

    def match_count
      __return_value = LibGLib.match_info_get_match_count(to_unsafe.as(LibGLib::MatchInfo*))
      __return_value
    end

    def regex
      __return_value = LibGLib.match_info_get_regex(to_unsafe.as(LibGLib::MatchInfo*))
      GLib::Regex.new(__return_value)
    end

    def string
      __return_value = LibGLib.match_info_get_string(to_unsafe.as(LibGLib::MatchInfo*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def partial_match?
      __return_value = LibGLib.match_info_is_partial_match(to_unsafe.as(LibGLib::MatchInfo*))
      __return_value
    end

    def matches
      __return_value = LibGLib.match_info_matches(to_unsafe.as(LibGLib::MatchInfo*))
      __return_value
    end

    def next
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.match_info_next(to_unsafe.as(LibGLib::MatchInfo*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def ref
      __return_value = LibGLib.match_info_ref(to_unsafe.as(LibGLib::MatchInfo*))
      GLib::MatchInfo.new(__return_value)
    end

    def unref
      __return_value = LibGLib.match_info_unref(to_unsafe.as(LibGLib::MatchInfo*))
      __return_value
    end

  end
end

