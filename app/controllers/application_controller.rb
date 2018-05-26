class ApplicationController < ActionController::Base
  before_action :set_locale

  private

    def set_locale
      locale = params[:locale] || session[:locale] || I18n.default_locale
      I18n.locale = locale
      session[:locale] = locale
    end
end
