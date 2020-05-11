require "gobject/gtk/autorun"

class Container
  getter widget : ::Gtk::Label

  def initialize
    @widget = Gtk::Label.new("Hello")
  end
end

main_window = Gtk::Window.new(title: "Widget container", border_width: 20)
container = Container.new
main_window.add(container.widget)
main_window.connect "destroy", &->Gtk.main_quit
main_window.show_all
