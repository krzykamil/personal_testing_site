module Secured
  # TODO  # https://github.com/rails/activerecord-session_store IMPLEMENT IN A WAY THAT DOES NOT RELY ON AR
  extend ActiveSupport::Concern

  included do
    before_action :logged_in_using_omniauth?
  end

  def logged_in_using_omniauth?
    redirect_to '/' unless session[:user_info].present?
  end
end
