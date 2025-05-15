class Visit < ApplicationRecord
  belongs_to :user ##紐づいている
  has_one :memos, dependent: :destroy ##その通院に関する「診察メモ」は1つ
  has_many :documents, dependent: :destroy ##受診資料・処方箋・検査結果などの関連書類が複数ある可能性
  has_many :recordings, dependent: :destroy ##その通院で録音した音声（例：医師の説明）も複数ある可能性

  validates :visit_date, :hospital_name, :purpose, presence: true ##いつ、どの病院、目的は空ではいけない
end
