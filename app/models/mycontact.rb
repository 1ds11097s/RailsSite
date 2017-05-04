class Mycontact < ApplicationRecord
    validates :name, presence: {message:'は必須項目です'}
    validates :age, numericality: {message:'は数字で入力してください'}
    validates :nationality, inclusion: {in: [true, false], message:'は真偽値です'}
end
