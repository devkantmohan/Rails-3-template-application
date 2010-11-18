require 'openid/store/filesystem'  
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '***', '******'
  provider :facebook, '***', '******'
  provider :open_id, OpenID::Store::Filesystem.new('/tmp')
end

