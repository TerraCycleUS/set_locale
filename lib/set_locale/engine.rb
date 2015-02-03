require "set_locale/controller_helpers"

module SetLocale
  class Engine < ::Rails::Engine
    config.after_initialize do |app|
      SetLocale.initialize

      ActionDispatch::Callbacks.to_prepare do
        ApplicationController.send :include, SetLocale::ControllerHelpers
      end
    end
  end
end
