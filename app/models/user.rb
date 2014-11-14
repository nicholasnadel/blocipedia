class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  #roles
  def admin?
    role == 'admin'
  end

  def moderator?
    role == 'moderator'
  end

  def unpaid_user
  end

  def paid_user
  end










end