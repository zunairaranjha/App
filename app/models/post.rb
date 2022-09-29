class Post < ApplicationRecord
    validates :title, presence: true # this is up to you
    validates :content, presence: true # this is up to you
    belongs_to :user

end
