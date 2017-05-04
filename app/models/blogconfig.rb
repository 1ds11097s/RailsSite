class Blogconfig < ApplicationRecord
    validates :title, :stylename, presence: {message:'は必須項目です'}
end
