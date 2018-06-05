class User < ApplicationRecord
  has_many :messages
  validates :username, length: { maximum: 20 }, uniqueness: true
  validates :email, presence: true, uniqueness:true
end
