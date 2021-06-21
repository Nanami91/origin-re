class Noodle < ApplicationRecord

  belongs_to :user
  has_one :address, dependent: :destroy, class_name: "Address"
  has_many :comments
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :store_name
    validates :price
    validates :description
    validates :menu
    validates :genre
    validates :user_id
  end
  with_options numericality: { other_than: 1, message: "can't be blank"} do
    validates :star_id 
  end

  def was_attached?
    self.image.attached?
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :star

end
