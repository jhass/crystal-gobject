require "gobject/gtk"

class TextViewWindow < Gtk::ApplicationWindow
  
  
  def self.new(app : Gtk::Application)
    super
  end

  def initialize(ptr)
    super(ptr)

    self.set_default_size(350, 350)
    self.title = "TextView Example"
    @grid = Gtk::Grid.new
    if grid = @grid
      add grid
    end
    create_textview
    create_toolbar
    create_buttons 
  end

  def create_buttons
    check_editable = Gtk::CheckButton.new_with_label "Editable"
    check_editable.active = true
    check_editable.on_toggled do |widget|
      if textview = @textview
        textview.editable = widget.active
      end
    end
  
    check_cursor = Gtk::CheckButton.new_with_label "Cursor Visible"
    check_cursor.active = true
    check_cursor.on_toggled do |widget|
      if textview = @textview
        textview.cursor_visible = widget.active
      end
    end 
  
    radio_wrapnone = Gtk::RadioButton.new_with_label_from_widget nil, "No Wrapping"
    radio_wrapnone.on_toggled do |widget|
      if textview = @textview
        textview.wrap_mode = Gtk::WrapMode::NONE
      end
    end 

    radio_wrapchar = Gtk::RadioButton.new_with_label_from_widget radio_wrapnone, "Character Wrapping"
    radio_wrapchar.on_toggled do |widget|
      if textview = @textview
        textview.wrap_mode = Gtk::WrapMode::CHAR
      end
    end 

    radio_wrapword = Gtk::RadioButton.new_with_label_from_widget radio_wrapnone, "Word Wrapping"
    radio_wrapword.on_toggled do |widget|
      if textview = @textview
        textview.wrap_mode = Gtk::WrapMode::WORD
      end
    end 

    if grid = @grid
      grid.attach(check_editable, 0, 2, 1, 1)
      grid.attach_next_to(check_cursor, check_editable, Gtk::PositionType::RIGHT, 1, 1)
      grid.attach(radio_wrapnone, 0, 3, 1, 1)
      grid.attach_next_to(radio_wrapchar, radio_wrapnone, Gtk::PositionType::RIGHT, 1, 1)
      grid.attach_next_to(radio_wrapword, radio_wrapchar, Gtk::PositionType::RIGHT, 1, 1)
    end
  end

  def create_toolbar
    toolbar = Gtk::Toolbar.new
    if grid = @grid
      grid.attach(toolbar, 0, 0, 3, 1)
    end
    button_bold = Gtk::ToolButton.new nil, nil
    button_bold.icon_name = "format-text-bold-symbolic"
    toolbar.insert button_bold, 0

    button_italic = Gtk::ToolButton.new nil, nil
    button_italic.icon_name = "format-text-italic-symbolic"
    toolbar.insert button_italic, 1

    button_underline = Gtk::ToolButton.new nil, nil
    button_underline.icon_name = "format-text-underline-symbolic"
    toolbar.insert button_underline, 2

    toolbar.insert Gtk::SeparatorToolItem.new, 3

    radio_justifyleft = Gtk::RadioToolButton.new nil
    radio_justifyleft.icon_name = "format-justify-left-symbolic"
    toolbar.insert radio_justifyleft, 4
    radio_justifyleft.on_toggled do |widget|
      if textview = @textview
        textview.justification = Gtk::Justification::LEFT
      end
    end

    radio_justifycenter = Gtk::RadioToolButton.new_from_widget(radio_justifyleft)
    radio_justifycenter.icon_name = "format-justify-center-symbolic"
    toolbar.insert radio_justifycenter, 5
    radio_justifycenter.on_toggled do |widget|
      if textview = @textview
        textview.justification = Gtk::Justification::CENTER
      end
    end

    radio_justifyright = Gtk::RadioToolButton.new_from_widget(radio_justifyleft)
    radio_justifyright.icon_name = "format-justify-right-symbolic"
    toolbar.insert radio_justifyright, 6
    radio_justifyright.on_toggled do |widget|
      if textview = @textview
        textview.justification = Gtk::Justification::RIGHT
      end
    end

    radio_justifyfill = Gtk::RadioToolButton.new_from_widget(radio_justifyleft)
    radio_justifyfill.icon_name = "format-justify-fill-symbolic"
    toolbar.insert radio_justifyfill, 7
    radio_justifyfill.on_toggled do |widget|
      if textview = @textview
        textview.justification = Gtk::Justification::FILL
      end
    end

    toolbar.insert Gtk::SeparatorToolItem.new, 8

    button_clear = Gtk::ToolButton.new nil, nil
    button_clear.icon_name = "edit-clear-symbolic"
    toolbar.insert button_clear, 9

    toolbar.insert Gtk::SeparatorToolItem.new, 10

    button_search = Gtk::ToolButton.new nil, nil
    button_search.icon_name = "system-search-symbolic"
    toolbar.insert button_search, 11

  end
 
  def create_textview
    scrolledwindow = Gtk::ScrolledWindow.new nil, nil
    scrolledwindow.hexpand = true
    scrolledwindow.vexpand = true
    if grid = @grid
      grid.attach(scrolledwindow, 0, 1, 3, 1)
    end
    @textview = Gtk::TextView.new
    if textview = @textview
      textbuffer = textview.buffer
      textbuffer.text="This is some text inside of a Gtk::TextView.\n" +
                      "Select text and click one of the buttons 'bold', 'italic',or 'underline' \n" +
                      "to modify the text accordingly."
      @textbuffer = textview.buffer.as(Gtk::TextBuffer)
      scrolledwindow.add textview
    end
  end
 
end

class MyApp < Gtk::Application
  def self.new(id, flags : Gio::ApplicationFlags)
    super
  end

  def initialize(ptr)
    super(ptr)

    on_activate do |application|
      window = TextViewWindow.new(self)
      window.connect "destroy", &->quit
      window.show_all
    end
  end
end

app = MyApp.new("org.crystal.mysample", :flags_none)
app.run
