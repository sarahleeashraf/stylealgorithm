class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :email, presence:true, uniqueness: true
  has_secure_password

  has_many :purchases, :dependent => :destroy
  has_many :wears

end