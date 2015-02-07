require "../src/gtk"

builder = Gtk::Builder.from_file "#{__DIR__}/greeter.glade"
builder.connect_signals

info = Gtk::Window.ensure builder["info"]
info_text = Gtk::Label.ensure builder["text"]
name = Gtk::Entry.ensure builder["name"]

def greet info, info_text, name
  text = name.text
  text = text.empty? ? "You should enter your name :("  : "Hello #{text}!"
  info_text.text = text
  info.show_all
end

name.connect "activate" do
  greet(info, info_text, name)
end

Gtk::Button.ensure(builder["greet"]).connect "clicked" do
  greet(info, info_text, name)
end

Gtk::Button.ensure(builder["ok"]).connect "clicked", &->info.hide


window = Gtk::Window.ensure builder["window"]
window.show_all
