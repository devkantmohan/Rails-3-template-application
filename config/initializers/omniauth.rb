require 'openid/store/filesystem'  
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'JAtETMZnkSaU24KkVVMw', 'qoQDoEOnBmZMo1mWTJW6XDdRSVuo5403IV464dOdOmk'
  provider :facebook, '169892326363630', '9e84ea226f6e5f6d063be0184d63f804'
  provider :open_id, OpenID::Store::Filesystem.new('/tmp')
end

