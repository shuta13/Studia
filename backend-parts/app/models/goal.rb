class Goal < ApplicationRecord
  validates :content, {presence: true}
  validates :number, {presence: true}
  validates :number, numericality: { only_integer: true }
  validates :user_id, {presence: true}
end
