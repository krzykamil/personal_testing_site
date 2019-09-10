Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    KkpSite::Application.credentials.auth0[:base_id],
    KkpSite::Application.credentials.auth0[:secret_id],
    'kkp.eu.auth0.com',
    callback_path: '/auth/auth0/callback',
    authorize_params: {
      scope: 'openid email profile'
    }
  )
end
