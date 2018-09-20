class Speaker < ApplicationRecord

has_many :meetings


validates :name, length: {minimum: 2}
validates :name, length: {minimum: 2}
validates :email, uniqueness: true
end

