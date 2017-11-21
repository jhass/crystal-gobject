require "./gtk"

redefine_main do |main|
  LibGtk.init pointerof(ARGC_UNSAFE), pointerof(ARGV_UNSAFE)

  {{main}}

  LibGtk.main
end

Signal::INT.trap do
  Gtk.main_quit
  exit
end