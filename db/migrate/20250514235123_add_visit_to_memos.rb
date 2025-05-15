class AddVisitToMemos < ActiveRecord::Migration[8.0]
  def change
    add_reference :memos, :visit, null: false, foreign_key: true
  end
end
