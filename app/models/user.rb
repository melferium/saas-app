class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
  
  # added two line below as instructed in Setup Milia and Devise - Text directions and code section
  acts_as_universal_and_determines_account
  has_one :member, :dependent => :destroy

end
