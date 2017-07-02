class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :profile
    has_many :comments
    belongs_to :comment
end
