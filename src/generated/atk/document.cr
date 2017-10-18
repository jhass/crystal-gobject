module Atk
  module Document
    def attribute_value(attribute_name)
      __return_value = LibAtk.document_get_attribute_value(to_unsafe.as(LibAtk::Document*), attribute_name.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def attributes
      __return_value = LibAtk.document_get_attributes(to_unsafe.as(LibAtk::Document*))
      GLib::SListIterator(Void*, Void**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def current_page_number
      __return_value = LibAtk.document_get_current_page_number(to_unsafe.as(LibAtk::Document*))
      __return_value
    end

    def document
      LibAtk.document_get_document(to_unsafe.as(LibAtk::Document*))
      nil
    end

    def document_type
      __return_value = LibAtk.document_get_document_type(to_unsafe.as(LibAtk::Document*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def locale
      __return_value = LibAtk.document_get_locale(to_unsafe.as(LibAtk::Document*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def page_count
      __return_value = LibAtk.document_get_page_count(to_unsafe.as(LibAtk::Document*))
      __return_value
    end

    def set_attribute_value(attribute_name, attribute_value)
      __return_value = LibAtk.document_set_attribute_value(to_unsafe.as(LibAtk::Document*), attribute_name.to_unsafe, attribute_value.to_unsafe)
      __return_value
    end

    alias LoadCompleteSignal = Document ->
    def on_load_complete(&__block : LoadCompleteSignal)
      __callback = ->(_arg0 : LibAtk::Document*) {
       __return_value = __block.call(Document.new(_arg0))
       __return_value
      }
      connect("load-complete", __callback)
    end

    alias LoadStoppedSignal = Document ->
    def on_load_stopped(&__block : LoadStoppedSignal)
      __callback = ->(_arg0 : LibAtk::Document*) {
       __return_value = __block.call(Document.new(_arg0))
       __return_value
      }
      connect("load-stopped", __callback)
    end

    alias PageChangedSignal = Document, Int32 ->
    def on_page_changed(&__block : PageChangedSignal)
      __callback = ->(_arg0 : LibAtk::Document*, _arg1 : LibAtk::Int32*) {
       __return_value = __block.call(Document.new(_arg0), _arg1)
       __return_value
      }
      connect("page-changed", __callback)
    end

    alias ReloadSignal = Document ->
    def on_reload(&__block : ReloadSignal)
      __callback = ->(_arg0 : LibAtk::Document*) {
       __return_value = __block.call(Document.new(_arg0))
       __return_value
      }
      connect("reload", __callback)
    end

  end
end

