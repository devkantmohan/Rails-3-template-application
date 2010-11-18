class User < ActiveRecord::Base
 has_many :authentications

 include Humanizer
 require_human_on :create

 devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

 attr_accessible :name, :lastname,  :email, :password, :password_confirmation, :remember_me, :humanizer_question_id, :humanizer_answer

 def apply_omniauth(omniauth)
   self.email = omniauth['user_info']['email'] if email.blank?
   self.name = omniauth['user_info']['name'] if name.blank?
   authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
 end

 def password_required?
   (authentications.empty? || !password.blank?) && super
 end

end
