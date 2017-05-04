class BoardUser < ApplicationRecord
    belongs_to :account
    has_many :board_message

    validates :nickname, presence: {message:'は必須項目です'}
end
