# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  token       :string           not null
#  tenant_id   :integer
#  landlord_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  address     :text             not null
#

class Group < ApplicationRecord
  validates :token, :address, presence: true
  validates :user1_id, length: {minimum: 0}, allow_nil: true
  validates :user2_id, length: {minimum: 0}, allow_nil: true

  belongs_to :user1,
  foreign_key: :user1_id,
  class_name: :User

  # belongs_to :user2,
  # foreign_key: :user2_id,
  # class_name: :User

  has_many :todos
end
