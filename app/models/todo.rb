class Todo < ApplicationRecord
  validates :group_id, :body, :resolved, presence: true

  belongs_to :group
  has_many :comments
end
