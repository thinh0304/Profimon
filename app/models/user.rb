class User < ApplicationRecord

	has_secure_password

 	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i


	validates :name, :presence=>true, :length => { :within => 6..25}
	validates :email, :presence=>true, :format=>EMAIL_REGEX, :length => {:maximum => 100}
	validates :password, :confirmation=>true
	validates_length_of :password, :in=> 6..20, :on => :create


end
