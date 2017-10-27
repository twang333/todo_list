class Task < ApplicationRecord
  default_value_for :status, 0
  enum status: [:todo, :completed, :archived]

  validates_presence_of :status, :description
end
