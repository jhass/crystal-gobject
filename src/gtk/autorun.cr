require "./gtk"

fun main(argc: Int32, argv : UInt8**) : Int32
  Crystal.main do
    LibGtk.init pointerof(ARGC_UNSAFE), pointerof(ARGV_UNSAFE)

    Crystal.main_user_code(argc, argv)

    LibGtk.main
  end
end

Signal::INT.trap do
  Gtk.main_quit
  exit
end
