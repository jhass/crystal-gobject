require "./menu_model"

module Gio
  class Menu < MenuModel
    @pointer : Void*
    def initialize(pointer : LibGio::Menu*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Menu*)
    end

    def self.new : self
      __return_value = LibGio.menu_new
      cast Gio::Menu.new(__return_value)
    end

    def append(label, detailed_action)
      LibGio.menu_append(@pointer.as(LibGio::Menu*), label ? label.to_unsafe : nil, detailed_action ? detailed_action.to_unsafe : nil)
      nil
    end

    def append_item(item)
      LibGio.menu_append_item(@pointer.as(LibGio::Menu*), item.to_unsafe.as(LibGio::MenuItem*))
      nil
    end

    def append_section(label, section)
      LibGio.menu_append_section(@pointer.as(LibGio::Menu*), label ? label.to_unsafe : nil, section.to_unsafe.as(LibGio::MenuModel*))
      nil
    end

    def append_submenu(label, submenu)
      LibGio.menu_append_submenu(@pointer.as(LibGio::Menu*), label ? label.to_unsafe : nil, submenu.to_unsafe.as(LibGio::MenuModel*))
      nil
    end

    def freeze
      LibGio.menu_freeze(@pointer.as(LibGio::Menu*))
      nil
    end

    def insert(position, label, detailed_action)
      LibGio.menu_insert(@pointer.as(LibGio::Menu*), Int32.new(position), label ? label.to_unsafe : nil, detailed_action ? detailed_action.to_unsafe : nil)
      nil
    end

    def insert_item(position, item)
      LibGio.menu_insert_item(@pointer.as(LibGio::Menu*), Int32.new(position), item.to_unsafe.as(LibGio::MenuItem*))
      nil
    end

    def insert_section(position, label, section)
      LibGio.menu_insert_section(@pointer.as(LibGio::Menu*), Int32.new(position), label ? label.to_unsafe : nil, section.to_unsafe.as(LibGio::MenuModel*))
      nil
    end

    def insert_submenu(position, label, submenu)
      LibGio.menu_insert_submenu(@pointer.as(LibGio::Menu*), Int32.new(position), label ? label.to_unsafe : nil, submenu.to_unsafe.as(LibGio::MenuModel*))
      nil
    end

    def prepend(label, detailed_action)
      LibGio.menu_prepend(@pointer.as(LibGio::Menu*), label ? label.to_unsafe : nil, detailed_action ? detailed_action.to_unsafe : nil)
      nil
    end

    def prepend_item(item)
      LibGio.menu_prepend_item(@pointer.as(LibGio::Menu*), item.to_unsafe.as(LibGio::MenuItem*))
      nil
    end

    def prepend_section(label, section)
      LibGio.menu_prepend_section(@pointer.as(LibGio::Menu*), label ? label.to_unsafe : nil, section.to_unsafe.as(LibGio::MenuModel*))
      nil
    end

    def prepend_submenu(label, submenu)
      LibGio.menu_prepend_submenu(@pointer.as(LibGio::Menu*), label ? label.to_unsafe : nil, submenu.to_unsafe.as(LibGio::MenuModel*))
      nil
    end

    def remove(position)
      LibGio.menu_remove(@pointer.as(LibGio::Menu*), Int32.new(position))
      nil
    end

    def remove_all
      LibGio.menu_remove_all(@pointer.as(LibGio::Menu*))
      nil
    end

  end
end

