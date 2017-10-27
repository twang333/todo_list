class Task < ApplicationRecord
  default_value_for :status, 0
  enum status: [:todo, :completed, :archived]
end
