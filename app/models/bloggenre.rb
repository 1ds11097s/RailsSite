class Bloggenre < ApplicationRecord
    has_many :blogpost

    validates :name, presence: {message:'は必須項目です'}
end
