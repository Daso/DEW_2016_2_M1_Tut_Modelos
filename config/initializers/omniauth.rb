OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1064686430304946', 'a5bd60c3ab78d0f82701549819b97451'
end