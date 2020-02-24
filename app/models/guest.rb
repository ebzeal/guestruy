class Guest < ApplicationRecord
  validates :fullname, presence: true, length: {minimum: 3, maximum: 60}
end
