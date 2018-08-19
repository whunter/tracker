class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :related_users_association, :class_name => "Group"
  has_many :related_users, :through => :related_users_association, :source => :related_user
  has_many :inverse_related_users_association, :class_name => "Group", :foreign_key => "related_user_id"
  has_many :inverse_related_users, :through => :inverse_related_users_association, :source => :user
end
