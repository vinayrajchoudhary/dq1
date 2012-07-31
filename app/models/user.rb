  class User < ActiveRecord::Base
	has_many :posts, :dependent => :destroy

  acts_as_authentic
    attr_accessible :name, :email, :password, :password_confirmation
end

