class Subscriber < ApplicationRecord
  validates :last_name, :first_name, :phone_number, presence: true
  validates :phone_number, length: { is: 12 }, format: { with: /\+\d{11}/ }, uniqueness: true
end
