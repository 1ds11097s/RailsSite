class Answer < ApplicationRecord
    belongs_to :question

    validates :content, :name, presence: {message:'は必須項目です'}
end
