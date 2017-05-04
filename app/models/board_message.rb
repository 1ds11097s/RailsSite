class BoardMessage < ApplicationRecord
    belongs_to :board_user

    validates :content, presence: {message:'は必須項目です'}
end
