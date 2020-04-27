require "gobject/gtk/autorun"

dialog = Gtk::MessageDialog.new text: "Hello", buttons: :yes_no
dialog.on_response do |_, response_id|
  response = Gtk::ResponseType.new(response_id)
  p! response
  Gtk.main_quit
end
dialog.show
