class Auth0Controller < ApplicationController

  attr_accessor :user_info

  def callback
    # This stores all the user information that came from Auth0
    # and the IdP
    session[:user_info] = request.env['omniauth.auth']
    # Redirect to the URL you want after successful auth
    redirect_to "/dashboard"
  end

  def failure
    # TODO show a failure page or redirect to an error page
    @error_msg = request.params['message']
  end
end
