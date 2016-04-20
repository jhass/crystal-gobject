require "../src/gtk"

builder = Gtk::Builder.new_from_file "#{__DIR__}/greeter.glade"
builder.connect_signals

info = Gtk::Window.cast builder["info"]
info_text = Gtk::Label.cast builder["text"]
name = Gtk::Entry.cast builder["name"]
greet = Gtk::Button.cast(builder["greet"])

def greet(button, info, info_text, name)
  button.sensitive = false
  button.label = "One time is enough!"
  name.disconnect("activate")

  text = name.text
  text = text.empty? ? "You should enter your name :("  : "Hello #{text}!"
  info_text.text = text
  info.show_all
end

name.on_activate do
  greet greet, info, info_text, name
end

greet.on_clicked do |button|
  greet button, info, info_text, name
end

Gtk::Button.cast(builder["ok"]).connect "clicked", &->info.hide


window = Gtk::Window.cast builder["window"]
window.show_all
