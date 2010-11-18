Rails 3 template site.
=============

Summary
-----

Rails 3 Template consist of
  authentification module
	 - devise
	 - onmiauth 
	 - openID
	 - gravatar image
	 - humanizer(like captcha)
  ,themes module
  	 - web-app-theme
  ,simple Item controller
	- paperclip
	- will_paginate (ajax)
	- search (ajax)
	- autocomplete

Project uses JQuery insead of Prototype. Easy to modify.

Usage
-----

Don't forget to edit 
  config/database.yml,  
  config/environments/production.rb
		-- config.action_mailer.default_url_options = { :host => 'host name' }
  config/environments/locales/*.yml
  config/environments/initializers/email_setup.rb
		-- ActionMailer::Base.smtp_settings = { ... }
  config/environments/initializers/omniauth.rb
		-- provider :twitter, '***', '***'
                -- provider :facebook, '***', '***'
  

mirror on [template.shs-team.ru](http://template.shs-team.ru/)

![Template application screenshot](http://dl.dropbox.com/u/3310118/template_shot.png)

Feel free to give an advice :)

Author
------

Willy Shark - [http://shs-team.ru](http://shs-team.ru)
mailto: master@shs-team.ru

