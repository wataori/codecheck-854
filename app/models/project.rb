class Project < ApplicationRecord
  validates :url, allow_nil: true, format: URI::regexp(%w(http https))
  validates :title, presence: true, length: { minimum: 1 , too_short: 'too shrot'}
  validates :description, presence: true
end
