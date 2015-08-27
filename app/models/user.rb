class User < ActiveRecord::Base
  # email
  # has_many :redirects
  # admin (boolean)
  has_many :redirects

  devise :database_authenticatable, :confirmable, :lockable,
         :timeoutable, :recoverable, :rememberable, :trackable,
         :validatable
end
