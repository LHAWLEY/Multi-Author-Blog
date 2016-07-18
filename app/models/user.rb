class User < ActiveRecord::Base
 validates :username, :email, :password, { presence: true }
  validates :username, :email, :password, {uniqueness: true }
end
