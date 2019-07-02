class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.text :name
      t.integer :option_count
      t.belongs_to :vote
      t.timestamps
    end
  end
end
