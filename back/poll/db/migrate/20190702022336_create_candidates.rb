class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.text :name
      t.integer :count
      t.belongs_to :vote
      t.timestamps
    end
  end
end
