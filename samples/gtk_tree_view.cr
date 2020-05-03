require "gobject/gtk/autorun"

builder = Gtk::Builder.new_from_file("#{__DIR__}/gtk_tree_view.glade")
builder.connect_signals

# Insert something into the model
store = Gtk::TreeStore.cast(builder["tree_model"])

root = Gtk::TreeIter.new
store.append(root, nil)
store.set(root, {0}, {"Root"})

child = Gtk::TreeIter.new
store.append(child, root)
store.set(child, {0}, {"Child!"})

view = Gtk::TreeView.cast(builder["tree_view"])
view.on_row_activated do |view, path, column|
  model = view.model.not_nil!

  iter = Gtk::TreeIter.new
  model.iter(iter, path)

  value = model.value(iter, 0)
  puts "You Clicked on #{value.as_s}"
end

# Show main view.
main_window = Gtk::Window.cast(builder["main_window"])
main_window.show_all
