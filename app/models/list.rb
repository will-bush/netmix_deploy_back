class List < ApplicationRecord
  belongs_to :user
  has_many :listings, dependent: :destroy
end
