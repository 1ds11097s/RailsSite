class Message < ApplicationRecord
    belongs_to :person

    validates :message, presence: {message:'を書いてください'}
end
