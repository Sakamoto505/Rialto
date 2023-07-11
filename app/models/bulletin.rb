# == Schema Information
#
# Table name: bulletins
#
#  id          :bigint           not null, primary key
#  description :text
#  price       :decimal(10, 2)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Bulletin < ApplicationRecord
  validates :title, :description, :price, presence: true
end
