require "./cell_renderer"

module Gtk
  class CellRendererText < CellRenderer
    def initialize(@gtk_cell_renderer_text)
    end

    def to_unsafe
      @gtk_cell_renderer_text.not_nil!
    end

















































    def self.new_internal
      __return_value = LibGtk.cell_renderer_text_new
      Gtk::CellRenderer.new(__return_value)
    end

    def fixed_height_from_font=(number_of_rows)
      __return_value = LibGtk.cell_renderer_text_set_fixed_height_from_font((to_unsafe as LibGtk::CellRendererText*), Int32.new(number_of_rows))
      __return_value
    end

    alias EditedSignal = CellRendererText, UInt8, UInt8 -> 
    def on_edited(&__block : EditedSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererText*, _arg1 : LibGtk::UInt8**, _arg2 : LibGtk::UInt8**) {
       __return_value = __block.call(CellRendererText.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)), (raise "Expected string but got null" unless _arg2; String.new(_arg2)))
       __return_value
      }
      connect("edited", __callback)
    end

  end
end

