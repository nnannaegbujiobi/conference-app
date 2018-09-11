class Speaker < ApplicationRecord
validates :name, length: {minimum: 2}
validates :name, length: {minimum: 2}
validates :email, uniqueness: true
validates :age, inclusion: { in:age greater than 18}
messege: {"You are not old enough"}


end