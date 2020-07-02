class Record < ApplicationRecord
  belongs_to :user

  validates :course, presence: true
  validates :price, presence: true
  validates :really_type, presence: true
  validates :avarage_type, presence: true
  validates :miss_type, presence: true

end
