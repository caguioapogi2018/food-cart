class Food < ApplicationRecord

  belongs_to :user

  validates :title, presence: true, length:{minimum: 2, maximum: 20}
  validates :description, presence: true, length:{minimum: 10, maximum: 100}

end