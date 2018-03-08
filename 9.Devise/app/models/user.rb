class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable 유저인증, :lockable회원정지(비번틀리면), :timeoutable(자동로그아웃) and :omniauthable(제3자가로그인)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
