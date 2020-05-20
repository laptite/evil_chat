class Message < ApplicationRecord
  validates :author, :text, presence: true
end
