Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 'YT_CLIENT_ID', 'YT_CLIENT_SECRET', scope: 'userinfo.profile,youtube'
end