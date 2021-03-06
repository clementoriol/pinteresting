class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :password, :on => :create,
                       :if => :password,
                       :format => {:with => /\A.{8,}\Z/ }

  has_many :pins
end
