require "./dialog"

module Gtk
  class AboutDialog < Dialog
    @gtk_about_dialog : LibGtk::AboutDialog*?
    def initialize(@gtk_about_dialog : LibGtk::AboutDialog*)
    end

    def to_unsafe
      @gtk_about_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def artists
      __return_value = LibGtk.about_dialog_get_artists(to_unsafe.as(LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def authors
      __return_value = LibGtk.about_dialog_get_authors(to_unsafe.as(LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def comments
      __return_value = LibGtk.about_dialog_get_comments(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def copyright
      __return_value = LibGtk.about_dialog_get_copyright(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def documenters
      __return_value = LibGtk.about_dialog_get_documenters(to_unsafe.as(LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def license
      __return_value = LibGtk.about_dialog_get_license(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def license_type
      __return_value = LibGtk.about_dialog_get_license_type(to_unsafe.as(LibGtk::AboutDialog*))
      __return_value
    end

    def logo
      __return_value = LibGtk.about_dialog_get_logo(to_unsafe.as(LibGtk::AboutDialog*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def logo_icon_name
      __return_value = LibGtk.about_dialog_get_logo_icon_name(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def program_name
      __return_value = LibGtk.about_dialog_get_program_name(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def translator_credits
      __return_value = LibGtk.about_dialog_get_translator_credits(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def version
      __return_value = LibGtk.about_dialog_get_version(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def website
      __return_value = LibGtk.about_dialog_get_website(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def website_label
      __return_value = LibGtk.about_dialog_get_website_label(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def wrap_license
      __return_value = LibGtk.about_dialog_get_wrap_license(to_unsafe.as(LibGtk::AboutDialog*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.about_dialog_new
      cast Gtk::Widget.new(__return_value)
    end

    def add_credit_section(section_name, people)
      LibGtk.about_dialog_add_credit_section(to_unsafe.as(LibGtk::AboutDialog*), section_name.to_unsafe, people)
      nil
    end

    def artists
      __return_value = LibGtk.about_dialog_get_artists(to_unsafe.as(LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def authors
      __return_value = LibGtk.about_dialog_get_authors(to_unsafe.as(LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def comments
      __return_value = LibGtk.about_dialog_get_comments(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def copyright
      __return_value = LibGtk.about_dialog_get_copyright(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def documenters
      __return_value = LibGtk.about_dialog_get_documenters(to_unsafe.as(LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def license
      __return_value = LibGtk.about_dialog_get_license(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def license_type
      __return_value = LibGtk.about_dialog_get_license_type(to_unsafe.as(LibGtk::AboutDialog*))
      __return_value
    end

    def logo
      __return_value = LibGtk.about_dialog_get_logo(to_unsafe.as(LibGtk::AboutDialog*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def logo_icon_name
      __return_value = LibGtk.about_dialog_get_logo_icon_name(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def program_name
      __return_value = LibGtk.about_dialog_get_program_name(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def translator_credits
      __return_value = LibGtk.about_dialog_get_translator_credits(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def version
      __return_value = LibGtk.about_dialog_get_version(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def website
      __return_value = LibGtk.about_dialog_get_website(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def website_label
      __return_value = LibGtk.about_dialog_get_website_label(to_unsafe.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def wrap_license
      __return_value = LibGtk.about_dialog_get_wrap_license(to_unsafe.as(LibGtk::AboutDialog*))
      __return_value
    end

    def artists=(artists)
      LibGtk.about_dialog_set_artists(to_unsafe.as(LibGtk::AboutDialog*), artists)
      nil
    end

    def authors=(authors)
      LibGtk.about_dialog_set_authors(to_unsafe.as(LibGtk::AboutDialog*), authors)
      nil
    end

    def comments=(comments)
      LibGtk.about_dialog_set_comments(to_unsafe.as(LibGtk::AboutDialog*), comments ? comments.to_unsafe : nil)
      nil
    end

    def copyright=(copyright)
      LibGtk.about_dialog_set_copyright(to_unsafe.as(LibGtk::AboutDialog*), copyright ? copyright.to_unsafe : nil)
      nil
    end

    def documenters=(documenters)
      LibGtk.about_dialog_set_documenters(to_unsafe.as(LibGtk::AboutDialog*), documenters)
      nil
    end

    def license=(license)
      LibGtk.about_dialog_set_license(to_unsafe.as(LibGtk::AboutDialog*), license ? license.to_unsafe : nil)
      nil
    end

    def license_type=(license_type : Gtk::License)
      LibGtk.about_dialog_set_license_type(to_unsafe.as(LibGtk::AboutDialog*), license_type)
      nil
    end

    def logo=(logo)
      LibGtk.about_dialog_set_logo(to_unsafe.as(LibGtk::AboutDialog*), logo ? logo.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    def logo_icon_name=(icon_name)
      LibGtk.about_dialog_set_logo_icon_name(to_unsafe.as(LibGtk::AboutDialog*), icon_name ? icon_name.to_unsafe : nil)
      nil
    end

    def program_name=(name)
      LibGtk.about_dialog_set_program_name(to_unsafe.as(LibGtk::AboutDialog*), name.to_unsafe)
      nil
    end

    def translator_credits=(translator_credits)
      LibGtk.about_dialog_set_translator_credits(to_unsafe.as(LibGtk::AboutDialog*), translator_credits ? translator_credits.to_unsafe : nil)
      nil
    end

    def version=(version)
      LibGtk.about_dialog_set_version(to_unsafe.as(LibGtk::AboutDialog*), version ? version.to_unsafe : nil)
      nil
    end

    def website=(website)
      LibGtk.about_dialog_set_website(to_unsafe.as(LibGtk::AboutDialog*), website ? website.to_unsafe : nil)
      nil
    end

    def website_label=(website_label)
      LibGtk.about_dialog_set_website_label(to_unsafe.as(LibGtk::AboutDialog*), website_label.to_unsafe)
      nil
    end

    def wrap_license=(wrap_license)
      LibGtk.about_dialog_set_wrap_license(to_unsafe.as(LibGtk::AboutDialog*), wrap_license)
      nil
    end

    alias ActivateLinkSignal = AboutDialog, String -> Bool
    def on_activate_link(&__block : ActivateLinkSignal)
      __callback = ->(_arg0 : LibGtk::AboutDialog*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(AboutDialog.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("activate-link", __callback)
    end

  end
end

