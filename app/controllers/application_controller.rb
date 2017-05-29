class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :definindo_layout

  protected
    def definindo_layout
      if devise_controller? && resource_name == :admin
        "backoffice_devise"
      else
        "application"
      end
    end
end
