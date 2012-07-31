class Post < ActiveRecord::Base
    attr_accessible :content, :name, :title
belongs_to :user

end
