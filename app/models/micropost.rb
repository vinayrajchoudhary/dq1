class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
validates_presence_of :content, :user_id	
end
