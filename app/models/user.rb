class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  belongs_to :plan
  
  #roles
  def admin?
    role == 'admin'
  end

  def moderator?
    role == 'moderator'
  end

  def premium_user
    role == 'premium_user'
  end










end