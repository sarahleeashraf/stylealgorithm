class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :email, presence:true, uniqueness: true
  has_secure_password


  has_many :garments 
  has_many :jewelries
  has_many :wears, :dependent => :destroy

end
