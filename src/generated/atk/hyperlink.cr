module Atk
  class Hyperlink < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibAtk::Hyperlink*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::Hyperlink*)
    end

    # Implements Action
    def end_index
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "end_index", gvalue)
      gvalue
    end

    def number_of_anchors
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "number_of_anchors", gvalue)
      gvalue
    end

    def selected_link
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "selected_link", gvalue)
      gvalue.boolean
    end

    def start_index
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "start_index", gvalue)
      gvalue
    end

    def end_index
      __return_value = LibAtk.hyperlink_get_end_index(@pointer.as(LibAtk::Hyperlink*))
      __return_value
    end

    def n_anchors
      __return_value = LibAtk.hyperlink_get_n_anchors(@pointer.as(LibAtk::Hyperlink*))
      __return_value
    end

    def object(i)
      __return_value = LibAtk.hyperlink_get_object(@pointer.as(LibAtk::Hyperlink*), Int32.new(i))
      Atk::Object.new(__return_value)
    end

    def start_index
      __return_value = LibAtk.hyperlink_get_start_index(@pointer.as(LibAtk::Hyperlink*))
      __return_value
    end

    def uri(i)
      __return_value = LibAtk.hyperlink_get_uri(@pointer.as(LibAtk::Hyperlink*), Int32.new(i))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def inline?
      __return_value = LibAtk.hyperlink_is_inline(@pointer.as(LibAtk::Hyperlink*))
      __return_value
    end

    def selected_link?
      __return_value = LibAtk.hyperlink_is_selected_link(@pointer.as(LibAtk::Hyperlink*))
      __return_value
    end

    def valid?
      __return_value = LibAtk.hyperlink_is_valid(@pointer.as(LibAtk::Hyperlink*))
      __return_value
    end

    alias LinkActivatedSignal = Hyperlink ->
    def on_link_activated(&__block : LinkActivatedSignal)
      __callback = ->(_arg0 : LibAtk::Hyperlink*) {
       __return_value = __block.call(Hyperlink.new(_arg0))
       __return_value
      }
      connect("link-activated", __callback)
    end

  end
end

