class Quest < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :involvements
  has_many :qs
  has_many :users, :through => :involvements, :uniq => true 
end
