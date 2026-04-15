class Task < ApplicationRecord
  belongs_to :project

  validates :name, presence: true
  validates :status, inclusion: { in: %w[pending in_progress done] }
end
