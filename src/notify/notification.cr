module Notify
  class Notification

    class Fields
      property! summary : String
      property! body : String
      property! icon_name : String
      property! app_name : String
      property! timeout : Int32
      property! category : String
      property! urgency : Symbol|Notify::Urgency
      getter actions

      def initialize
        @transient = false
        @resident  = false
        @actions   = [] of {String, String, ActionCallback}
      end

      def transient?
        @transient
      end

      def transient
        @transient = true
      end

      def resident?
        @resident
      end

      def resident
        @resident
      end

      def action(name, label, &block : ActionCallback)
        @actions << {name, label, block}
      end
    end

    alias ActionCallback = String ->

    property_property body, String
    property_property "icon-name", String
    property_property id, Int32
    property_property summary, String

    def self.build
      fields = Fields.new

      with fields yield fields

      new(fields.summary, fields.body?, fields.icon_name?).tap do |notification|
        notification.app_name = fields.app_name if fields.app_name?
        notification.timeout = fields.timeout if fields.timeout?
        notification.category = fields.category if fields.category?
        notification.urgency = fields.urgency if fields.urgency?
        notification.transient if fields.transient?
        notification.resident if fields.resident?
        fields.actions.each do |action|
          name, label, block = action
          notification.action name, label, &block
        end
      end
    end

    def self.new(summary : String, body : String? =nil, icon : String? = nil)
      body = body ? body.to_unsafe : Pointer(UInt8).null
      icon =  icon ? icon.to_unsafe : Pointer(UInt8).null
      new summary, body, icon
    end

    def action(name, label, &block : ActionCallback)
      LibNotify.notification_add_action(
        self,
        name,
        label,
        ->Notification.handle_action,
        ClosureDataManager.register(Box.box(block)),
        ->ClosureDataManager.deregister
      )
    end

    def self.handle_action(notification, action, callback)
      action = String.new(action)
      Box(ActionCallback).unbox(callback).call action
    end

    def set_hint(name, value)
      case value
      when Bool
        set_hint_uint32 name, value ? 1_u32 : 0_u32
      when String
        set_hint_string name, value
      when Int
        set_hint_int32 name, value
      end
    end

    def clear_hints
      LibNotify.notification_clear_hints self
    end

    def transient
      set_hint "transient", true
    end

    def resident
      set_hint "resident", true
    end

    def urgency=(urgency)
      if urgency.is_a?(Symbol)
        urgency = case urgency
          when :low
            Notify::Urgency::LOW
          when :normal
            Notify::Urgency::NORMAL
          when :critical
            Notify::Urgency::CRITICAL
          else
            raise ArgumentError.new "#{urgency} is not a valid urgency level"
          end
      end

      previous_def(urgency)
    end

    def update(summary=nil, body=nil, icon=nil)
      summary ||= self.summary.not_nil!
      body    ||= self.body
      icon    ||= self.icon_name
      body    = body ? body.to_unsafe : Pointer(UInt8).null
      icon    = icon ? icon.to_unsafe : Pointer(UInt8).null

      LibNotify.notification_update self, summary, body, icon

      show
    end

    private def get(property)
    end
  end
end
