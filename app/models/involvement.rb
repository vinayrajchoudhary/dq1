class Involvement < ActiveRecord::Base
  belongs_to :user
  belongs_to :quest
end
