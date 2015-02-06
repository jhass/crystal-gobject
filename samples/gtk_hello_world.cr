require "../src/gtk"

window = Gtk::Window.new
window.title = "Hello World!"
window.connect "destroy", &->Gtk.quit
window.show
