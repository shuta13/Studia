class Goal < ApplicationRecord
  validates :content, {presence: true}
  validates :number, {presence: true}
  validates :user_id, {presence: true}
end
