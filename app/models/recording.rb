class Recording < ApplicationRecord
  belongs_to :user
  belongs_to :visit

  validates :file_path, presence: true
end
