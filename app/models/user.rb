class User < ApplicationRecord
  has_many :visits, dependent: :destroy
  has_many :memos, dependent: :destroy
  has_many :recordings, dependent: :destroy
  has_many :documents, dependent: :destroy
  has_many :question_selections, dependent: :destroy
  has_many :notifications, dependent: :destroy

  validates :name, :email, presence: true
  validates :email, uniqueness: true
end