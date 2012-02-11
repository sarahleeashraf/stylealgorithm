class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :email, presence:true, uniqueness: true
  has_secure_password


  has_many :user_garments, :dependent => :destroy
  has_many :garments, :through => :user_garments
  has_many :wears, :dependent => :destroy

end
