require "./box"

module Gtk
  class FileChooserWidget < Box
    def initialize(@gtk_file_chooser_widget)
    end

    def to_unsafe
      @gtk_file_chooser_widget.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FileChooser
    # Implements Orientable


    def self.new_internal(action)
      __return_value = LibGtk.file_chooser_widget_new(action)
      Gtk::Widget.new(__return_value)
    end

    alias DesktopFolderSignal = FileChooserWidget -> 
    def on_desktop_folder(&__block : DesktopFolderSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("desktop-folder", __callback)
    end

    alias DownFolderSignal = FileChooserWidget -> 
    def on_down_folder(&__block : DownFolderSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("down-folder", __callback)
    end

    alias HomeFolderSignal = FileChooserWidget -> 
    def on_home_folder(&__block : HomeFolderSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("home-folder", __callback)
    end

    alias LocationPopupSignal = FileChooserWidget, UInt8 -> 
    def on_location_popup(&__block : LocationPopupSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(FileChooserWidget.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)))
       __return_value
      }
      connect("location-popup", __callback)
    end

    alias LocationPopupOnPasteSignal = FileChooserWidget -> 
    def on_location_popup_on_paste(&__block : LocationPopupOnPasteSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("location-popup-on-paste", __callback)
    end

    alias LocationTogglePopupSignal = FileChooserWidget -> 
    def on_location_toggle_popup(&__block : LocationTogglePopupSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("location-toggle-popup", __callback)
    end

    alias PlacesShortcutSignal = FileChooserWidget -> 
    def on_places_shortcut(&__block : PlacesShortcutSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("places-shortcut", __callback)
    end

    alias QuickBookmarkSignal = FileChooserWidget, Int32 -> 
    def on_quick_bookmark(&__block : QuickBookmarkSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*, _arg1 : LibGtk::Int32*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0), _arg1)
       __return_value
      }
      connect("quick-bookmark", __callback)
    end

    alias RecentShortcutSignal = FileChooserWidget -> 
    def on_recent_shortcut(&__block : RecentShortcutSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("recent-shortcut", __callback)
    end

    alias SearchShortcutSignal = FileChooserWidget -> 
    def on_search_shortcut(&__block : SearchShortcutSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("search-shortcut", __callback)
    end

    alias ShowHiddenSignal = FileChooserWidget -> 
    def on_show_hidden(&__block : ShowHiddenSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("show-hidden", __callback)
    end

    alias UpFolderSignal = FileChooserWidget -> 
    def on_up_folder(&__block : UpFolderSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserWidget*) {
       __return_value = __block.call(FileChooserWidget.new(_arg0))
       __return_value
      }
      connect("up-folder", __callback)
    end

  end
end

