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

  belongs_to :tenant,
  inverse_of: :groups,
  foreign_key: :tenant_id,
  class_name: :User

  belongs_to :landlord,
  inverse_of: :groups,
  foreign_key: :landlord_id,
  class_name: :User

  has_many :todos
end
