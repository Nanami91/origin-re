class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :noodle

  with_options presence: true do

  validates :text
  validates :user_id
  validates :noodle_id

  end
end
