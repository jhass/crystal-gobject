require "./widget"

module Gtk
  class Calendar < Widget
    def initialize(@gtk_calendar)
    end

    def to_unsafe
      @gtk_calendar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable










    def self.new_internal
      __return_value = LibGtk.calendar_new
      Gtk::Widget.new(__return_value)
    end

    def clear_marks
      __return_value = LibGtk.calendar_clear_marks((to_unsafe as LibGtk::Calendar*))
      __return_value
    end

    def date(year, month, day)
      __return_value = LibGtk.calendar_get_date((to_unsafe as LibGtk::Calendar*), UInt32.new(year), UInt32.new(month), UInt32.new(day))
      __return_value
    end

    def day_is_marked(day)
      __return_value = LibGtk.calendar_get_day_is_marked((to_unsafe as LibGtk::Calendar*), UInt32.new(day))
      __return_value
    end

    def detail_height_rows
      __return_value = LibGtk.calendar_get_detail_height_rows((to_unsafe as LibGtk::Calendar*))
      __return_value
    end

    def detail_width_chars
      __return_value = LibGtk.calendar_get_detail_width_chars((to_unsafe as LibGtk::Calendar*))
      __return_value
    end

    def display_options
      __return_value = LibGtk.calendar_get_display_options((to_unsafe as LibGtk::Calendar*))
      __return_value
    end

    def mark_day(day)
      __return_value = LibGtk.calendar_mark_day((to_unsafe as LibGtk::Calendar*), UInt32.new(day))
      __return_value
    end

    def select_day(day)
      __return_value = LibGtk.calendar_select_day((to_unsafe as LibGtk::Calendar*), UInt32.new(day))
      __return_value
    end

    def select_month(month, year)
      __return_value = LibGtk.calendar_select_month((to_unsafe as LibGtk::Calendar*), UInt32.new(month), UInt32.new(year))
      __return_value
    end

    def set_detail_func(func : LibGtk::CalendarDetailFunc, data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.calendar_set_detail_func((to_unsafe as LibGtk::Calendar*), func, data, destroy)
      __return_value
    end

    def detail_height_rows=(rows)
      __return_value = LibGtk.calendar_set_detail_height_rows((to_unsafe as LibGtk::Calendar*), Int32.new(rows))
      __return_value
    end

    def detail_width_chars=(chars)
      __return_value = LibGtk.calendar_set_detail_width_chars((to_unsafe as LibGtk::Calendar*), Int32.new(chars))
      __return_value
    end

    def display_options=(flags)
      __return_value = LibGtk.calendar_set_display_options((to_unsafe as LibGtk::Calendar*), flags)
      __return_value
    end

    def unmark_day(day)
      __return_value = LibGtk.calendar_unmark_day((to_unsafe as LibGtk::Calendar*), UInt32.new(day))
      __return_value
    end

    alias DaySelectedSignal = Calendar -> 
    def on_day_selected(&__block : DaySelectedSignal)
      __callback = ->(_arg0 : LibGtk::Calendar*) {
       __return_value = __block.call(Calendar.new(_arg0))
       __return_value
      }
      connect("day-selected", __callback)
    end

    alias DaySelectedDoubleClickSignal = Calendar -> 
    def on_day_selected_double_click(&__block : DaySelectedDoubleClickSignal)
      __callback = ->(_arg0 : LibGtk::Calendar*) {
       __return_value = __block.call(Calendar.new(_arg0))
       __return_value
      }
      connect("day-selected-double-click", __callback)
    end

    alias MonthChangedSignal = Calendar -> 
    def on_month_changed(&__block : MonthChangedSignal)
      __callback = ->(_arg0 : LibGtk::Calendar*) {
       __return_value = __block.call(Calendar.new(_arg0))
       __return_value
      }
      connect("month-changed", __callback)
    end

    alias NextMonthSignal = Calendar -> 
    def on_next_month(&__block : NextMonthSignal)
      __callback = ->(_arg0 : LibGtk::Calendar*) {
       __return_value = __block.call(Calendar.new(_arg0))
       __return_value
      }
      connect("next-month", __callback)
    end

    alias NextYearSignal = Calendar -> 
    def on_next_year(&__block : NextYearSignal)
      __callback = ->(_arg0 : LibGtk::Calendar*) {
       __return_value = __block.call(Calendar.new(_arg0))
       __return_value
      }
      connect("next-year", __callback)
    end

    alias PrevMonthSignal = Calendar -> 
    def on_prev_month(&__block : PrevMonthSignal)
      __callback = ->(_arg0 : LibGtk::Calendar*) {
       __return_value = __block.call(Calendar.new(_arg0))
       __return_value
      }
      connect("prev-month", __callback)
    end

    alias PrevYearSignal = Calendar -> 
    def on_prev_year(&__block : PrevYearSignal)
      __callback = ->(_arg0 : LibGtk::Calendar*) {
       __return_value = __block.call(Calendar.new(_arg0))
       __return_value
      }
      connect("prev-year", __callback)
    end

  end
end

