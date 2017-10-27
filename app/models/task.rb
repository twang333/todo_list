class Task < ApplicationRecord
  enum status: [:todo, :completed, :archived]
end
