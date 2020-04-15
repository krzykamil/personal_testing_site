Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    KkpSite::Application.credentials[:auth0_client_id],
    KkpSite::Application.credentials[:auth0_client_secret],
    KkpSite::Application.credentials[:auth0_domain],
    callback_path: '/auth/auth0/callback',
    authorize_params: {
      scope: 'openid email profile'
    }
  )
end
# https://manage.auth0.com/dashboard/eu/kkp/applications/B6GMCpzGmXTEPzbUB4NUeLce9LQUi7tF/quickstart/rails
