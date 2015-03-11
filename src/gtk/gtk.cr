require "signal"
require "../generated/gtk"

module Gtk
  class Window
    def self.new
      new LibGtk::WindowType::TOPLEVEL
    end

    def self.new type : LibGtk::WindowType
      widget = new_internal type
      new widget.to_unsafe
    end
  end

  class Builder
    def connect_signals
      connect_signals nil
    end

    def [] id
      object(id)
    end
  end
end

redefine_main do |main|
  LibGtk.init pointerof(ARGC_UNSAFE), pointerof(ARGV_UNSAFE)

  {{main}}

  LibGtk.main
end

Signal.trap(Signal::INT) do
  Gtk.main_quit
  exit
end
