class Post < ApplicationRecord
  STATUSES = %w[draft published archived].freeze

  enum :status, STATUSES.index_by(&:itself), validate: true, default: "draft"

  validates :title,   presence: true, uniqueness: { case_sensitive: false }
  validates :content, presence: true
end
