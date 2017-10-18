module Gtk
  class TreeIter
    include GObject::WrappedType

    def self.new(stamp : Int32|Nil = nil, user_data : Void*|Nil = nil, user_data2 : Void*|Nil = nil, user_data3 : Void*|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGtk::TreeIter*)).tap do |object|
        object.stamp = stamp unless stamp.nil?
        object.user_data = user_data unless user_data.nil?
        object.user_data2 = user_data2 unless user_data2.nil?
        object.user_data3 = user_data3 unless user_data3.nil?
      end
    end

    @gtk_tree_iter : LibGtk::TreeIter*?
    def initialize(@gtk_tree_iter : LibGtk::TreeIter*)
    end

    def to_unsafe
      @gtk_tree_iter.not_nil!
    end

    def copy
      __return_value = LibGtk.tree_iter_copy(to_unsafe.as(LibGtk::TreeIter*))
      Gtk::TreeIter.new(__return_value)
    end

    def free
      LibGtk.tree_iter_free(to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

    def stamp
      (to_unsafe.as(LibGtk::TreeIter*).value.stamp)
    end

    def stamp=(value : Int32)
      to_unsafe.as(LibGtk::TreeIter*).value.stamp = Int32.new(value)
    end

    def user_data
      (to_unsafe.as(LibGtk::TreeIter*).value.user_data)
    end

    def user_data=(value : Void*)
      to_unsafe.as(LibGtk::TreeIter*).value.user_data = value
    end

    def user_data2
      (to_unsafe.as(LibGtk::TreeIter*).value.user_data2)
    end

    def user_data2=(value : Void*)
      to_unsafe.as(LibGtk::TreeIter*).value.user_data2 = value
    end

    def user_data3
      (to_unsafe.as(LibGtk::TreeIter*).value.user_data3)
    end

    def user_data3=(value : Void*)
      to_unsafe.as(LibGtk::TreeIter*).value.user_data3 = value
    end

  end
end

