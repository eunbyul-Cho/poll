class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.rename :name, :userId
    end
  end
end
