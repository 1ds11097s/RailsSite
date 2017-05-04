class Questionary < ApplicationRecord
    has_many :questionary_item
    has_many :questionary_result

    validates :title, :description, :deadline, presence:{message:'は必須項目です'}
end
