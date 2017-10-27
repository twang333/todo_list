class Task < ApplicationRecord
  enum status: [:new, :complete, :archived]
end
