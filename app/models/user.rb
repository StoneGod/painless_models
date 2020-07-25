class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :address, presence: true

  has_one :organization

  geocoded_by :address
end
