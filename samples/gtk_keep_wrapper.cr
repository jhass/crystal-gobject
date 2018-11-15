require "../src/gtk/autorun"

class MyWidget < Gtk::Button
  @foo : Int32?

  def instantiate
    self.label = "Default Label"
    @foo = MyWidget.next_foo

    keep_wrapper
  end

  @@foo = -1
  def self.next_foo
    @@foo += 1
  end

  def foo
    @foo
  end
end

w = Gtk::Window.new
w.add v=Gtk::VBox.new(false,0)

3.times do |i|
  v.pack_start(mw=MyWidget.new, false, false, 1)

  mw.label = "button#{i}"
  
  mw.on_clicked do |b|
    p b.as(MyWidget).foo
    v.foreach do |c| p c.as(MyWidget).foo end
  end
end

v.foreach do |c| p c end

w.connect "delete-event", ->Gtk.main_quit

w.show_all

