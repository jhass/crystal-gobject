require "./dialog"

module Gtk
  # The Gtk::AboutDialog offers a simple way to display information about
  # a program like its logo, name, copyright, website and license. It is
  # also possible to give credits to the authors, documenters, translators
  # and artists who have worked on the program. An about dialog is typically
  # opened when the user selects the **About** option from the **Help** menu.
  # All parts of the dialog are optional.
  class AboutDialog < Dialog
    @pointer : Void*
    def initialize(pointer : LibGtk::AboutDialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::AboutDialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    
    # Returns the "artists" property value
    #  The people who contributed artwork to the program, as a `nil`-terminated
    # array of strings. Each string may contain email addresses and URLs, which
    # will be displayed as links, see the introduction for more details.
    def artists
      gvalue = GObject::Value.new(GObject::Type::ARRAY)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "artists", gvalue)
      gvalue
    end

    
    # Returns the "authors" property value
    #  The authors of the program, as a `nil`-terminated array of strings.
    # Each string may contain email addresses and URLs, which will be displayed
    # as links, see the introduction for more details.
    def authors
      gvalue = GObject::Value.new(GObject::Type::ARRAY)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "authors", gvalue)
      gvalue
    end

    
    # Returns the "comments" property value
    #  Comments about the program. This string is displayed in a label
    # in the main dialog, thus it should be a short explanation of
    # the main purpose of the program, not a detailed list of features.
    def comments
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "comments", gvalue)
      gvalue.string
    end

    
    # Returns the "copyright" property value
    #  Copyright information for the program.
    def copyright
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "copyright", gvalue)
      gvalue.string
    end

    
    # Returns the "documenters" property value
    #  The people documenting the program, as a `nil`-terminated array of strings.
    # Each string may contain email addresses and URLs, which will be displayed
    # as links, see the introduction for more details.
    def documenters
      gvalue = GObject::Value.new(GObject::Type::ARRAY)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "documenters", gvalue)
      gvalue
    end

    
    # Returns the "license" property value
    #  The license of the program. This string is displayed in a
    # text view in a secondary dialog, therefore it is fine to use
    # a long multi-paragraph text. Note that the text is only wrapped
    # in the text view if the "wrap-license" property is set to `true`;
    # otherwise the text itself must contain the intended linebreaks.
    # When setting this property to a non-`nil` value, the
    # `“license-type”` property is set to `GTK_LICENSE_CUSTOM`
    # as a side effect.
    def license
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "license", gvalue)
      gvalue.string
    end

    
    # Returns the "license_type" property value
    #  Flags: Read / Write
    def license_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "license_type", gvalue)
      gvalue.enum
    end

    
    # Returns the "logo" property value
    #  A logo for the about box. If it is `nil`, the default window icon
    # set with `Gtk::Window#set_default_icon` will be used.
    def logo
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "logo", gvalue)
      GdkPixbuf::Pixbuf.cast(gvalue.object)
    end

    
    # Returns the "logo_icon_name" property value
    #  A named icon to use as the logo for the about box. This property
    # overrides the `“logo”` property.
    def logo_icon_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "logo_icon_name", gvalue)
      gvalue.string
    end

    
    # Returns the "program_name" property value
    #  The name of the program.
    # If this is not set, it defaults to `LibGLib.g_get_application_name()`.
    def program_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "program_name", gvalue)
      gvalue.string
    end

    
    # Returns the "translator_credits" property value
    #  Credits to the translators. This string should be marked as translatable.
    # The string may contain email addresses and URLs, which will be displayed
    # as links, see the introduction for more details.
    def translator_credits
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "translator_credits", gvalue)
      gvalue.string
    end

    
    # Returns the "version" property value
    #  The version of the program.
    def version
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "version", gvalue)
      gvalue.string
    end

    
    # Returns the "website" property value
    #  If `GTK_LICENSE_CUSTOM` is used, the current contents of the
    # `“license”` property are used.
    def website
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "website", gvalue)
      gvalue.string
    end

    
    # Returns the "website_label" property value
    #  The label for the link to the website of the program.
    def website_label
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "website_label", gvalue)
      gvalue.string
    end

    
    # Returns the "wrap_license" property value
    #  Whether to wrap the text in the license dialog.
    def wrap_license
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap_license", gvalue)
      gvalue.boolean
    end

    
    # Creates a new `GtkAboutDialog`.
    def self.new : self
      __return_value = LibGtk.about_dialog_new
      cast Gtk::Widget.new(__return_value)
    end

    
    # Creates a new section in the Credits page.
    # Parameters:
    #   *people* - The people who belong to that section. 
    def add_credit_section(section_name, people)
      LibGtk.about_dialog_add_credit_section(@pointer.as(LibGtk::AboutDialog*), section_name.to_unsafe, people)
      nil
    end

    
    # Returns the string which are displayed in the artists tab
    # of the secondary credits dialog.
    def artists
      __return_value = LibGtk.about_dialog_get_artists(@pointer.as(LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    
    # Returns the string which are displayed in the authors tab
    # of the secondary credits dialog.
    def authors
      __return_value = LibGtk.about_dialog_get_authors(@pointer.as(LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    
    # Returns the comments string.
    def comments
      __return_value = LibGtk.about_dialog_get_comments(@pointer.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns the copyright string.
    def copyright
      __return_value = LibGtk.about_dialog_get_copyright(@pointer.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns the string which are displayed in the documenters
    # tab of the secondary credits dialog.
    def documenters
      __return_value = LibGtk.about_dialog_get_documenters(@pointer.as(LibGtk::AboutDialog*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    
    # Returns the license information.
    def license
      __return_value = LibGtk.about_dialog_get_license(@pointer.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Retrieves the license set using `gtk_about_dialog_set_license_type()`
    def license_type
      __return_value = LibGtk.about_dialog_get_license_type(@pointer.as(LibGtk::AboutDialog*))
      __return_value
    end

    
    # Returns the `GdkPixbuf` displayed as logo in the about dialog.
    def logo
      __return_value = LibGtk.about_dialog_get_logo(@pointer.as(LibGtk::AboutDialog*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    
    # Returns the icon name displayed as logo in the about dialog.
    def logo_icon_name
      __return_value = LibGtk.about_dialog_get_logo_icon_name(@pointer.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns the program name displayed in the about dialog.
    def program_name
      __return_value = LibGtk.about_dialog_get_program_name(@pointer.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns the translator credits string which is displayed
    # in the translators tab of the secondary credits dialog.
    def translator_credits
      __return_value = LibGtk.about_dialog_get_translator_credits(@pointer.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns the version string.
    def version
      __return_value = LibGtk.about_dialog_get_version(@pointer.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns the website URL.
    def website
      __return_value = LibGtk.about_dialog_get_website(@pointer.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns the label used for the website link.
    def website_label
      __return_value = LibGtk.about_dialog_get_website_label(@pointer.as(LibGtk::AboutDialog*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    
    # Returns whether the license text in `Gtk::AboutDialog`
    #  is automatically wrapped.
    def wrap_license
      __return_value = LibGtk.about_dialog_get_wrap_license(@pointer.as(LibGtk::AboutDialog*))
      __return_value
    end

    
    # Sets the strings which are displayed in the artists tab
    # of the secondary credits dialog.
    # Parameters:
    #   *artists* - a `nil`-terminated array of strings. 
    def artists=(artists)
      LibGtk.about_dialog_set_artists(@pointer.as(LibGtk::AboutDialog*), artists)
      nil
    end

    
    # Sets the strings which are displayed in the authors tab
    # of the secondary credits dialog.
    # Parameters:
    #   *authors* - a `nil`-terminated array of strings. 
    def authors=(authors)
      LibGtk.about_dialog_set_authors(@pointer.as(LibGtk::AboutDialog*), authors)
      nil
    end

    
    # Sets the comments string to display in the about dialog.
    # This should be a short string of one or two lines.
    # Parameters:
    #   *comments* - a comments string. 
    def comments=(comments)
      LibGtk.about_dialog_set_comments(@pointer.as(LibGtk::AboutDialog*), comments ? comments.to_unsafe : nil)
      nil
    end

    
    # Sets the copyright string to display in the about dialog.
    # This should be a short string of one or two lines.
    # Parameters:
    #   *copyright* - the copyright string. 
    def copyright=(copyright)
      LibGtk.about_dialog_set_copyright(@pointer.as(LibGtk::AboutDialog*), copyright ? copyright.to_unsafe : nil)
      nil
    end

    
    # Sets the strings which are displayed in the documenters tab
    # of the secondary credits dialog.
    # Parameters:
    #   *documenters* - a `nil`-terminated array of strings. 
    def documenters=(documenters)
      LibGtk.about_dialog_set_documenters(@pointer.as(LibGtk::AboutDialog*), documenters)
      nil
    end

    
    # Sets the license information to be displayed in the secondary
    # license dialog. If `license` is `nil`,the license button is hidden.
    # Parameters:
    #   *license* - the license information or `nil`. 
    def license=(license)
      LibGtk.about_dialog_set_license(@pointer.as(LibGtk::AboutDialog*), license ? license.to_unsafe : nil)
      nil
    end

    
    # Sets the license of the application showing the about dialog from a list of known licenses.
    # This function overrides the license set using gtk_about_dialog_set_license().
    # Parameters:
    #   *license_type* - -the type of license
    def license_type=(license_type : Gtk::License)
      LibGtk.about_dialog_set_license_type(@pointer.as(LibGtk::AboutDialog*), license_type)
      nil
    end

    
    # Sets the pixbuf to be displayed as logo in the about dialog.
    # If it is `nil`, the default window icon set with
    # `Gtk::Window#set_default_icon()` will be used.
    # Parameters:
    #   *logo* - a `GdkPixbuf`, or `nil`. 
    def logo=(logo)
      LibGtk.about_dialog_set_logo(@pointer.as(LibGtk::AboutDialog*), logo ? logo.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    
    # Sets the pixbuf to be displayed as logo in the about dialog.
    # If it is `nil`, the default window icon set with
    # `Gtk::Window#set_default_icon()` will be used.
    # Parameters:
    #   *icon_name* - an icon name, or `nil`. 
    def logo_icon_name=(icon_name)
      LibGtk.about_dialog_set_logo_icon_name(@pointer.as(LibGtk::AboutDialog*), icon_name ? icon_name.to_unsafe : nil)
      nil
    end

    
    # Sets the name to display in the about dialog.
    # If this is not set, it defaults to `LibGLib.g_get_application_name()`.
    # Parameters:
    #   *name* - the program name
    def program_name=(name)
      LibGtk.about_dialog_set_program_name(@pointer.as(LibGtk::AboutDialog*), name.to_unsafe)
      nil
    end

    
    # Sets the translator credits string which is displayed in
    # the translators tab of the secondary credits dialog.
    # Parameters:
    #   *translator_credits* - the translator credits. 
    def translator_credits=(translator_credits)
      LibGtk.about_dialog_set_translator_credits(@pointer.as(LibGtk::AboutDialog*), translator_credits ? translator_credits.to_unsafe : nil)
      nil
    end

    
    # Sets the version string to display in the about dialog.
    # Parameters:
    #   *version* - the version string. 
    def version=(version)
      LibGtk.about_dialog_set_version(@pointer.as(LibGtk::AboutDialog*), version ? version.to_unsafe : nil)
      nil
    end

    
    # Sets the URL to use for the website link.
    # Parameters:
    #   *website* - a URL string starting with "http://". 
    def website=(website)
      LibGtk.about_dialog_set_website(@pointer.as(LibGtk::AboutDialog*), website ? website.to_unsafe : nil)
      nil
    end

    
    # Sets the label to be used for the website link.
    # Parameters:
    #   *website_label* - the label used for the website link
    def website_label=(website_label)
      LibGtk.about_dialog_set_website_label(@pointer.as(LibGtk::AboutDialog*), website_label.to_unsafe)
      nil
    end

    
    # Sets whether the license text in `Gtk::AboutDialog`
    #  is automatically wrapped.
    # Parameters:
    #   *wrap_license* - whether to wrap the license
    def wrap_license=(wrap_license)
      LibGtk.about_dialog_set_wrap_license(@pointer.as(LibGtk::AboutDialog*), wrap_license)
      nil
    end

    # The signal which gets emitted to activate a URI. 
    # Returns `true` if the link has been activated.
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

