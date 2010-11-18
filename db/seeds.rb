
user = User.create( :name=> 'root', :lastname => 'root', :permission=> 1 ,:email => 'root@root.com', :password => '123123' )
user.permission = 1
user.save


