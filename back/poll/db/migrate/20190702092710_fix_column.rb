class FixColumn < ActiveRecord::Migration[5.0]
  def change
    change_table :candidates do |t|
      t.rename :vote_id, :poll_id
    end
  end
end
