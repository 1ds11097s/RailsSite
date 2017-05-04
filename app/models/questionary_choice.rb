class QuestionaryChoice < ApplicationRecord
    belongs_to :questionary_item

    validates :content, :value, presence:{message:'は必須項目です'}
    validates :value, numericality:{message:'は数字で入力してください'}
end
