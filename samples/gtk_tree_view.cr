require "gobject/gtk/autorun"

builder = Gtk::Builder.new_from_file("#{__DIR__}/gtk_tree_view.glade")
builder.connect_signals

# Insert something into the model
model = Gtk::TreeStore.cast(builder["tree_model"])

root = Gtk::TreeIter.new
model.append(root, nil)
model.set(root, [0], GObject::Value.new("Root"), 1)

child = Gtk::TreeIter.new
model.append(child, root)
model.set(child, [0], GObject::Value.new("Child!"), 1)

view = Gtk::TreeView.cast(builder["tree_view"])
view.on_row_activated do |view, path, column|
  puts "TreeView: #{view}"
  puts "Path: #{path.to_string}"
  puts "Column: #{column.title}"
end

# Show main view.
main_window = Gtk::Window.cast(builder["main_window"])
main_window.show_all
