class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
	has_many :posts, dependent: :destroy
	has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id",
						dependent: :destroy
end
