class Document < ApplicationRecord
  belongs_to :user
  belongs_to :visit
end
