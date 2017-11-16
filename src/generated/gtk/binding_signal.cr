module Gtk
  class BindingSignal
    include GObject::WrappedType

    def self.new(next next_ : Gtk::BindingSignal|Nil = nil, signal_name : String|Nil = nil, n_args : UInt32|Nil = nil, args : Array(Gtk::BindingArg)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGtk::BindingSignal*)).tap do |object|
        object.next = next_ unless next_.nil?
        object.signal_name = signal_name unless signal_name.nil?
        object.n_args = n_args unless n_args.nil?
        object.args = args unless args.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::BindingSignal*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::BindingSignal*)
    end

    def next
      Gtk::BindingSignal.new((to_unsafe.as(LibGtk::BindingSignal*).value.next_))
    end

    def next=(value : Gtk::BindingSignal)
      to_unsafe.as(LibGtk::BindingSignal*).value.next_ = value.to_unsafe.as(LibGtk::BindingSignal*)
    end

    def signal_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::BindingSignal*).value.signal_name); ::String.new((to_unsafe.as(LibGtk::BindingSignal*).value.signal_name)))
    end

    def signal_name=(value : String)
      to_unsafe.as(LibGtk::BindingSignal*).value.signal_name = value.to_unsafe
    end

    def n_args
      (to_unsafe.as(LibGtk::BindingSignal*).value.n_args)
    end

    def n_args=(value : UInt32)
      to_unsafe.as(LibGtk::BindingSignal*).value.n_args = UInt32.new(value)
    end

    def args
      PointerIterator.new((to_unsafe.as(LibGtk::BindingSignal*).value.args)) {|__item| Gtk::BindingArg.new(__item) }
    end

    def args=(value : Array(Gtk::BindingArg))
      to_unsafe.as(LibGtk::BindingSignal*).value.args = value
    end

  end
end

