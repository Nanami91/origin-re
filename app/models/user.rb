class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  has_many :noodles
  has_many :comments


  with_options presence: true do
    validates :birth_date
    validates :nickname
       
    with_options format: { with: /\A[ぁ-んァ-ン一-龥々ー]/, message: "Full-width characters"} do
      validates :last_name
      validates :first_name
    end
       
    with_options format: { with: /\A[ァ-ヶー－]+\z/, message: "Full-width katakana characters"} do
      validates :last_name_kana
      validates :first_name_kana
    end
    validates :email
    validates :password, format: {with: /\A(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}\z/, message: "Include both letters and numbers" }, on: :create
  end


end
