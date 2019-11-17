# Abi::Widget is a Gtk+ widget based on AbiWord application.
# AbiWord is a free word processing program (https://www.abisource.com/). 
# Documentation for Abi::Widget and Abi::Table :
# https://lazka.github.io/pgi-docs/#Abi-3.0
# install packages :
#    libabiword-dev
#    gir1.2-abi-3.0
require "gobject/gtk"
require "gobject"
require_gobject "Abi"

application = Gtk::Application.new("org.crystal.sample", :flags_none)

application.on_activate do
  window = Gtk::ApplicationWindow.new(application)
  window.border_width = 10
  window.title = "Hello"
  window.connect "destroy", &->application.quit
  Abi.init_noargs
  window.add Abi::Widget.new()
  window.show_all
end

application.run
