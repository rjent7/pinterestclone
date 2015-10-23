class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :profile_name , presence: true, 
                uniqueness: true

  has_many :pins

  has_many :likes

  def likes?(pin)
  	pin.likes.where(user_id: id).any?
  end
end
