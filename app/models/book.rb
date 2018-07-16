class Book < ApplicationRecord
  belongs_to :user
  has_one :prologue
end
