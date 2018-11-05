module Gio
  class MountOperation < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::MountOperation*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MountOperation*)
    end

    def anonymous
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "anonymous", gvalue)
      gvalue.boolean
    end

    def choice
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "choice", gvalue)
      gvalue
    end

    def domain
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "domain", gvalue)
      gvalue.string
    end

    def is_tcrypt_hidden_volume
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_tcrypt_hidden_volume", gvalue)
      gvalue.boolean
    end

    def is_tcrypt_system_volume
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_tcrypt_system_volume", gvalue)
      gvalue.boolean
    end

    def password
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "password", gvalue)
      gvalue.string
    end

    def password_save
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "password_save", gvalue)
      gvalue.enum
    end

    def pim
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pim", gvalue)
      gvalue
    end

    def username
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "username", gvalue)
      gvalue.string
    end

    def self.new : self
      __return_value = LibGio.mount_operation_new
      cast Gio::MountOperation.new(__return_value)
    end

    def anonymous
      __return_value = LibGio.mount_operation_get_anonymous(@pointer.as(LibGio::MountOperation*))
      __return_value
    end

    def choice
      __return_value = LibGio.mount_operation_get_choice(@pointer.as(LibGio::MountOperation*))
      __return_value
    end

    def domain
      __return_value = LibGio.mount_operation_get_domain(@pointer.as(LibGio::MountOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def is_tcrypt_hidden_volume
      __return_value = LibGio.mount_operation_get_is_tcrypt_hidden_volume(@pointer.as(LibGio::MountOperation*))
      __return_value
    end

    def is_tcrypt_system_volume
      __return_value = LibGio.mount_operation_get_is_tcrypt_system_volume(@pointer.as(LibGio::MountOperation*))
      __return_value
    end

    def password
      __return_value = LibGio.mount_operation_get_password(@pointer.as(LibGio::MountOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def password_save
      __return_value = LibGio.mount_operation_get_password_save(@pointer.as(LibGio::MountOperation*))
      __return_value
    end

    def pim
      __return_value = LibGio.mount_operation_get_pim(@pointer.as(LibGio::MountOperation*))
      __return_value
    end

    def username
      __return_value = LibGio.mount_operation_get_username(@pointer.as(LibGio::MountOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def reply(result : Gio::MountOperationResult)
      LibGio.mount_operation_reply(@pointer.as(LibGio::MountOperation*), result)
      nil
    end

    def anonymous=(anonymous)
      LibGio.mount_operation_set_anonymous(@pointer.as(LibGio::MountOperation*), anonymous)
      nil
    end

    def choice=(choice)
      LibGio.mount_operation_set_choice(@pointer.as(LibGio::MountOperation*), Int32.new(choice))
      nil
    end

    def domain=(domain)
      LibGio.mount_operation_set_domain(@pointer.as(LibGio::MountOperation*), domain.to_unsafe)
      nil
    end

    def is_tcrypt_hidden_volume=(hidden_volume)
      LibGio.mount_operation_set_is_tcrypt_hidden_volume(@pointer.as(LibGio::MountOperation*), hidden_volume)
      nil
    end

    def is_tcrypt_system_volume=(system_volume)
      LibGio.mount_operation_set_is_tcrypt_system_volume(@pointer.as(LibGio::MountOperation*), system_volume)
      nil
    end

    def password=(password)
      LibGio.mount_operation_set_password(@pointer.as(LibGio::MountOperation*), password.to_unsafe)
      nil
    end

    def password_save=(save : Gio::PasswordSave)
      LibGio.mount_operation_set_password_save(@pointer.as(LibGio::MountOperation*), save)
      nil
    end

    def pim=(pim)
      LibGio.mount_operation_set_pim(@pointer.as(LibGio::MountOperation*), UInt32.new(pim))
      nil
    end

    def username=(username)
      LibGio.mount_operation_set_username(@pointer.as(LibGio::MountOperation*), username.to_unsafe)
      nil
    end

    alias AbortedSignal = MountOperation ->
    def on_aborted(&__block : AbortedSignal)
      __callback = ->(_arg0 : LibGio::MountOperation*) {
       __return_value = __block.call(MountOperation.new(_arg0))
       __return_value
      }
      connect("aborted", __callback)
    end

    alias AskPasswordSignal = MountOperation, String, String, String, Gio::AskPasswordFlags ->
    def on_ask_password(&__block : AskPasswordSignal)
      __callback = ->(_arg0 : LibGio::MountOperation*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::UInt8**, _arg3 : LibGio::UInt8**, _arg4 : LibGio::LibGio::AskPasswordFlags*) {
       __return_value = __block.call(MountOperation.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), (raise "Expected string but got null" unless _arg2; ::String.new(_arg2)), (raise "Expected string but got null" unless _arg3; ::String.new(_arg3)), _arg4)
       __return_value
      }
      connect("ask-password", __callback)
    end

    alias AskQuestionSignal = MountOperation, String, Array(String) ->
    def on_ask_question(&__block : AskQuestionSignal)
      __callback = ->(_arg0 : LibGio::MountOperation*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::UInt8***) {
       __return_value = __block.call(MountOperation.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), PointerIterator.new(_arg2) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) })
       __return_value
      }
      connect("ask-question", __callback)
    end

    alias ReplySignal = MountOperation, Gio::MountOperationResult ->
    def on_reply(&__block : ReplySignal)
      __callback = ->(_arg0 : LibGio::MountOperation*, _arg1 : LibGio::LibGio::MountOperationResult*) {
       __return_value = __block.call(MountOperation.new(_arg0), _arg1)
       __return_value
      }
      connect("reply", __callback)
    end

    alias ShowProcessesSignal = MountOperation, String, Array(Int32), Array(String) ->
    def on_show_processes(&__block : ShowProcessesSignal)
      __callback = ->(_arg0 : LibGio::MountOperation*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::Void**, _arg3 : LibGio::UInt8***) {
       __return_value = __block.call(MountOperation.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), _arg2, PointerIterator.new(_arg3) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) })
       __return_value
      }
      connect("show-processes", __callback)
    end

    alias ShowUnmountProgressSignal = MountOperation, String, Int64, Int64 ->
    def on_show_unmount_progress(&__block : ShowUnmountProgressSignal)
      __callback = ->(_arg0 : LibGio::MountOperation*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::Int64*, _arg3 : LibGio::Int64*) {
       __return_value = __block.call(MountOperation.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), _arg2, _arg3)
       __return_value
      }
      connect("show-unmount-progress", __callback)
    end

  end
end

