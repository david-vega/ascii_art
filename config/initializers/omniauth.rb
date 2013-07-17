Rails.application.config.middleware.use OmniAuth::Builder do
  TWITTER_CONFIG = YAML.load_file("#{::Rails.root}/config/twitter.yml")[::Rails.env]
  provider :twitter, TWITTER_CONFIG['app_id'], TWITTER_CONFIG['secret']
end
