class Qmail < ActiveRecord::Base
  attr_accessible :content
  belongs_to :q
  belongs_to :user
end
