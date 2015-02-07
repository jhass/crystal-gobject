require "../src/gtk"

window = Gtk::Window.new
window.title = "Hello World!"
window.connect "destroy", &->Gtk.quit
window.border_width = 10
button = Gtk::Button.new_with_label "Hello World!"
button.connect "clicked" do
  puts "Hello World!"
end
button.connect "clicked", &->window.destroy
window.add button

window.show_all
