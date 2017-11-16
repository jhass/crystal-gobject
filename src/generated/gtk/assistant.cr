require "./window"

module Gtk
  class Assistant < Window
    @pointer : Void*
    def initialize(pointer : LibGtk::Assistant*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Assistant*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def use_header_bar
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_header_bar", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.assistant_new
      cast Gtk::Widget.new(__return_value)
    end

    def add_action_widget(child)
      LibGtk.assistant_add_action_widget(@pointer.as(LibGtk::Assistant*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def append_page(page)
      __return_value = LibGtk.assistant_append_page(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def commit
      LibGtk.assistant_commit(@pointer.as(LibGtk::Assistant*))
      nil
    end

    def current_page
      __return_value = LibGtk.assistant_get_current_page(@pointer.as(LibGtk::Assistant*))
      __return_value
    end

    def n_pages
      __return_value = LibGtk.assistant_get_n_pages(@pointer.as(LibGtk::Assistant*))
      __return_value
    end

    def nth_page(page_num)
      __return_value = LibGtk.assistant_get_nth_page(@pointer.as(LibGtk::Assistant*), Int32.new(page_num))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def page_complete(page)
      __return_value = LibGtk.assistant_get_page_complete(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def page_has_padding(page)
      __return_value = LibGtk.assistant_get_page_has_padding(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def page_header_image(page)
      __return_value = LibGtk.assistant_get_page_header_image(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def page_side_image(page)
      __return_value = LibGtk.assistant_get_page_side_image(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def page_title(page)
      __return_value = LibGtk.assistant_get_page_title(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def page_type(page)
      __return_value = LibGtk.assistant_get_page_type(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def insert_page(page, position)
      __return_value = LibGtk.assistant_insert_page(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*), Int32.new(position))
      __return_value
    end

    def next_page
      LibGtk.assistant_next_page(@pointer.as(LibGtk::Assistant*))
      nil
    end

    def prepend_page(page)
      __return_value = LibGtk.assistant_prepend_page(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def previous_page
      LibGtk.assistant_previous_page(@pointer.as(LibGtk::Assistant*))
      nil
    end

    def remove_action_widget(child)
      LibGtk.assistant_remove_action_widget(@pointer.as(LibGtk::Assistant*), child.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    def remove_page(page_num)
      LibGtk.assistant_remove_page(@pointer.as(LibGtk::Assistant*), Int32.new(page_num))
      nil
    end

    def current_page=(page_num)
      LibGtk.assistant_set_current_page(@pointer.as(LibGtk::Assistant*), Int32.new(page_num))
      nil
    end

    def set_forward_page_func(page_func, data, destroy)
      LibGtk.assistant_set_forward_page_func(@pointer.as(LibGtk::Assistant*), page_func ? page_func : nil, data ? data : nil, destroy)
      nil
    end

    def set_page_complete(page, complete)
      LibGtk.assistant_set_page_complete(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*), complete)
      nil
    end

    def set_page_has_padding(page, has_padding)
      LibGtk.assistant_set_page_has_padding(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*), has_padding)
      nil
    end

    def set_page_header_image(page, pixbuf)
      LibGtk.assistant_set_page_header_image(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*), pixbuf ? pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    def set_page_side_image(page, pixbuf)
      LibGtk.assistant_set_page_side_image(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*), pixbuf ? pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    def set_page_title(page, title)
      LibGtk.assistant_set_page_title(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*), title.to_unsafe)
      nil
    end

    def set_page_type(page, type : Gtk::AssistantPageType)
      LibGtk.assistant_set_page_type(@pointer.as(LibGtk::Assistant*), page.to_unsafe.as(LibGtk::Widget*), type)
      nil
    end

    def update_buttons_state
      LibGtk.assistant_update_buttons_state(@pointer.as(LibGtk::Assistant*))
      nil
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
      __callback = ->(_arg0 : LibGtk::Assistant*, _arg1 : LibGtk::LibGtk::Widget**) {
       __return_value = __block.call(Assistant.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("prepare", __callback)
    end

  end
end

