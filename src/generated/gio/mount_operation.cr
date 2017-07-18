module Gio
  class MountOperation < GObject::Object
    @gio_mount_operation : LibGio::MountOperation*?
    def initialize(@gio_mount_operation : LibGio::MountOperation*)
    end

    def to_unsafe
      @gio_mount_operation.not_nil!
    end

    def anonymous
      __return_value = LibGio.mount_operation_get_anonymous(to_unsafe.as(LibGio::MountOperation*))
      __return_value
    end

    def choice
      __return_value = LibGio.mount_operation_get_choice(to_unsafe.as(LibGio::MountOperation*))
      __return_value
    end

    def domain
      __return_value = LibGio.mount_operation_get_domain(to_unsafe.as(LibGio::MountOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def password
      __return_value = LibGio.mount_operation_get_password(to_unsafe.as(LibGio::MountOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def password_save
      __return_value = LibGio.mount_operation_get_password_save(to_unsafe.as(LibGio::MountOperation*))
      __return_value
    end

    def username
      __return_value = LibGio.mount_operation_get_username(to_unsafe.as(LibGio::MountOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new : self
      __return_value = LibGio.mount_operation_new
      cast Gio::MountOperation.new(__return_value)
    end

    def anonymous
      __return_value = LibGio.mount_operation_get_anonymous(to_unsafe.as(LibGio::MountOperation*))
      __return_value
    end

    def choice
      __return_value = LibGio.mount_operation_get_choice(to_unsafe.as(LibGio::MountOperation*))
      __return_value
    end

    def domain
      __return_value = LibGio.mount_operation_get_domain(to_unsafe.as(LibGio::MountOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def password
      __return_value = LibGio.mount_operation_get_password(to_unsafe.as(LibGio::MountOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def password_save
      __return_value = LibGio.mount_operation_get_password_save(to_unsafe.as(LibGio::MountOperation*))
      __return_value
    end

    def username
      __return_value = LibGio.mount_operation_get_username(to_unsafe.as(LibGio::MountOperation*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def reply(result : Gio::MountOperationResult)
      __return_value = LibGio.mount_operation_reply(to_unsafe.as(LibGio::MountOperation*), result)
      __return_value
    end

    def anonymous=(anonymous)
      __return_value = LibGio.mount_operation_set_anonymous(to_unsafe.as(LibGio::MountOperation*), anonymous)
      __return_value
    end

    def choice=(choice)
      __return_value = LibGio.mount_operation_set_choice(to_unsafe.as(LibGio::MountOperation*), Int32.new(choice))
      __return_value
    end

    def domain=(domain)
      __return_value = LibGio.mount_operation_set_domain(to_unsafe.as(LibGio::MountOperation*), domain.to_unsafe)
      __return_value
    end

    def password=(password)
      __return_value = LibGio.mount_operation_set_password(to_unsafe.as(LibGio::MountOperation*), password.to_unsafe)
      __return_value
    end

    def password_save=(save : Gio::PasswordSave)
      __return_value = LibGio.mount_operation_set_password_save(to_unsafe.as(LibGio::MountOperation*), save)
      __return_value
    end

    def username=(username)
      __return_value = LibGio.mount_operation_set_username(to_unsafe.as(LibGio::MountOperation*), username.to_unsafe)
      __return_value
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
      __callback = ->(_arg0 : LibGio::MountOperation*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::Void***, _arg3 : LibGio::UInt8***) {
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

