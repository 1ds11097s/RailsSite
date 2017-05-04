class QuestionaryItem < ApplicationRecord
    belongs_to :questionary
    has_many :questionary_choice

    validates :content, presence:{message:'は必須項目です'}
end
