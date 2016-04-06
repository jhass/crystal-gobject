require "./window"

module Gtk
  class Assistant < Window
    def initialize(@gtk_assistant)
    end

    def to_unsafe
      @gtk_assistant.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable

    def self.new_internal
      __return_value = LibGtk.assistant_new
      Gtk::Widget.new(__return_value)
    end

    def add_action_widget(child)
      __return_value = LibGtk.assistant_add_action_widget((to_unsafe as LibGtk::Assistant*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def append_page(page)
      __return_value = LibGtk.assistant_append_page((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def commit
      __return_value = LibGtk.assistant_commit((to_unsafe as LibGtk::Assistant*))
      __return_value
    end

    def current_page
      __return_value = LibGtk.assistant_get_current_page((to_unsafe as LibGtk::Assistant*))
      __return_value
    end

    def n_pages
      __return_value = LibGtk.assistant_get_n_pages((to_unsafe as LibGtk::Assistant*))
      __return_value
    end

    def nth_page(page_num)
      __return_value = LibGtk.assistant_get_nth_page((to_unsafe as LibGtk::Assistant*), Int32.new(page_num))
      Gtk::Widget.new(__return_value)
    end

    def page_complete(page)
      __return_value = LibGtk.assistant_get_page_complete((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def page_has_padding(page)
      __return_value = LibGtk.assistant_get_page_has_padding((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def page_header_image(page)
      __return_value = LibGtk.assistant_get_page_header_image((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def page_side_image(page)
      __return_value = LibGtk.assistant_get_page_side_image((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def page_title(page)
      __return_value = LibGtk.assistant_get_page_title((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def page_type(page)
      __return_value = LibGtk.assistant_get_page_type((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def insert_page(page, position)
      __return_value = LibGtk.assistant_insert_page((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def next_page
      __return_value = LibGtk.assistant_next_page((to_unsafe as LibGtk::Assistant*))
      __return_value
    end

    def prepend_page(page)
      __return_value = LibGtk.assistant_prepend_page((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def previous_page
      __return_value = LibGtk.assistant_previous_page((to_unsafe as LibGtk::Assistant*))
      __return_value
    end

    def remove_action_widget(child)
      __return_value = LibGtk.assistant_remove_action_widget((to_unsafe as LibGtk::Assistant*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def remove_page(page_num)
      __return_value = LibGtk.assistant_remove_page((to_unsafe as LibGtk::Assistant*), Int32.new(page_num))
      __return_value
    end

    def current_page=(page_num)
      __return_value = LibGtk.assistant_set_current_page((to_unsafe as LibGtk::Assistant*), Int32.new(page_num))
      __return_value
    end

    def set_forward_page_func(page_func : LibGtk::AssistantPageFunc?, data, destroy : LibGLib::DestroyNotify)
      __return_value = LibGtk.assistant_set_forward_page_func((to_unsafe as LibGtk::Assistant*), page_func && page_func, data, destroy)
      __return_value
    end

    def set_page_complete(page, complete)
      __return_value = LibGtk.assistant_set_page_complete((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*), complete)
      __return_value
    end

    def set_page_has_padding(page, has_padding)
      __return_value = LibGtk.assistant_set_page_has_padding((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*), has_padding)
      __return_value
    end

    def set_page_header_image(page, pixbuf)
      __return_value = LibGtk.assistant_set_page_header_image((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*), pixbuf && (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def set_page_side_image(page, pixbuf)
      __return_value = LibGtk.assistant_set_page_side_image((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*), pixbuf && (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def set_page_title(page, title)
      __return_value = LibGtk.assistant_set_page_title((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*), title)
      __return_value
    end

    def set_page_type(page, type)
      __return_value = LibGtk.assistant_set_page_type((to_unsafe as LibGtk::Assistant*), (page.to_unsafe as LibGtk::Widget*), type)
      __return_value
    end

    def update_buttons_state
      __return_value = LibGtk.assistant_update_buttons_state((to_unsafe as LibGtk::Assistant*))
      __return_value
    end

    alias ApplySignal = Assistant -> 
    def on_apply(&__block : ApplySignal)
      __callback = ->(_arg0 : LibGtk::Assistant*) {
       __return_value = __block.call(Assistant.new(_arg0))
       __return_value
      }
      connect("apply", __callback)
    end

    alias CancelSignal = Assistant -> 
    def on_cancel(&__block : CancelSignal)
      __callback = ->(_arg0 : LibGtk::Assistant*) {
       __return_value = __block.call(Assistant.new(_arg0))
       __return_value
      }
      connect("cancel", __callback)
    end

    alias CloseSignal = Assistant -> 
    def on_close(&__block : CloseSignal)
      __callback = ->(_arg0 : LibGtk::Assistant*) {
       __return_value = __block.call(Assistant.new(_arg0))
       __return_value
      }
      connect("close", __callback)
    end

    alias EscapeSignal = Assistant -> 
    def on_escape(&__block : EscapeSignal)
      __callback = ->(_arg0 : LibGtk::Assistant*) {
       __return_value = __block.call(Assistant.new(_arg0))
       __return_value
      }
      connect("escape", __callback)
    end

    alias PrepareSignal = Assistant, Gtk::Widget -> 
    def on_prepare(&__block : PrepareSignal)
      __callback = ->(_arg0 : LibGtk::Assistant*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(Assistant.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("prepare", __callback)
    end

  end
end

