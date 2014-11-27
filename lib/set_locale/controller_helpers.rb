module SetLocale
  module ControllerHelpers

    def self.included(application_controller)
      application_controller.before_action :set_locale
    end

    def set_locale
      I18n.locale = SetLocale.from_strategies || I18n.default_locale
    end
  end
end