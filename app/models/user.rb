class User < ApplicationRecord
  has_secure_password

  has_many :ads, foreign_key: 'id_user'

  validates :name, presence: true
  validates :email, format: { with: /\s*@\s*/ }, presence: true, uniqueness: true
end
