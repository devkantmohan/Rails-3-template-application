
 ActionMailer::Base.smtp_settings = {  
   :address              => "smtp.yandex.ru",  
   :port                 =>  25,
   :domain		 => "your_domain",    
   :authentication       => :plain,
   :user_name            => "your_user_name",
   :password             => "your_big_pass"
     
} 
