class Address < ApplicationRecord

  belongs_to :noodle

  with_options presence: true do
    validates :post_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Enter it as follows (e.g. 123-4567)"}
    validates :city
    validates :home_number
    validates :phone_number, numericality: { only_integer: true, message: "Input half-width characters"}
    validates :noodle_id
  end
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :phone_number, length: { in: 10..11 , message: "is too long"}

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  
end
