class Book < ApplicationRecord
    # has_one_attached :text
    
    validates :title, presence: true
    validates :body, presence: true
end
