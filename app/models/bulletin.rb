class Bulletin < ApplicationRecord

  validates :title, :description, presence: true
end
