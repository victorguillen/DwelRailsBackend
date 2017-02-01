class Group < ApplicationRecord
  validates :token, presence: true

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
