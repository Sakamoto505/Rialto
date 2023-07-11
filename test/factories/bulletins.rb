# == Schema Information
#
# Table name: bulletins
#
#  id          :bigint           not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :bulletin do
    title { "MyString" }
    description { "MyText" }
  end
end
