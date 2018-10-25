class User < ApplicationRecord
  validates_presence_of :username, :password, require: true
  validates_uniqueness_of :username

  has_secure_password
  enum role: [:default, :admin]
end
