class Record < ApplicationRecord
  validates :studypage, {presence: true}
end
