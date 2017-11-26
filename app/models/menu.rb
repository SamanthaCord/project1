# == Schema Information
#
# Table name: menus
#
#  id          :integer          not null, primary key
#  name        :text
#  ingredients :text
#  price       :text
#  size        :integer
#  weather     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Menu < ApplicationRecord
  has_and_belongs_to_many :benefits
  has_and_belongs_to_many :users
end
