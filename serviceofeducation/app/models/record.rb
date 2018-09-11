class Record < ApplicationRecord
  validates :studypage, {presence: true}
  validates :studypage, numericality: { only_integer: true }
end
