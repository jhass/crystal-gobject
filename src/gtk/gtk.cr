require "signal"

require "../g_object"
require "../gdk"

require "../gobject"
require_gobject "Gtk"

module Gtk
  class Window
    def self.new : self
      new type: Gtk::WindowType::TOPLEVEL
    end
  end

  class Builder
    def connect_signals
      connect_signals nil
    end

    def [](id)
      object(id).not_nil!
    end

    def []?(id)
      object(id)
    end
  end

  class CssProvider
    def load_from_data(string : String)
      load_from_data(string, string.bytesize)
    end
  end

  class Application
    def run
      run ARGC_UNSAFE, ARGV_UNSAFE
    end
  end
end
