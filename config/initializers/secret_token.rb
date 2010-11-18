# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Zapi::Application.config.secret_token = 'e795ff3d139761d44866dda8a9bec15445fcbe474a365bbf6abb90000415f0e9eec917d1cba693678f7a27410570165396315511a9aff1d3690c1cb7518f2bfe'
Zapi::Application.config.cookie_secret = '3b161f7668f938d1aeb73e1137964f8d5eaafy2b5173c2130ecb73b95b63070tb77370640dce7e76700fb228f35f7865ab2a5ccd22d00563504a2ea9c3d8dffe'

Zapi::Application.config.action_dispatch.session = {
  :key    => '_app_session',
  :secret => '0x0dkfj3927dkc7dafgearzdzdvrgha4524djdh36rkckdfzsg'
}