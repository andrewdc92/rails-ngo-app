class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :disaster
      t.integer :year
      t.integer :deaths
      t.integer :occurence
      t.integer :affected
      t.integer :homeless
      t.integer :injured
      t.integer :total_affected
      t.integer :damage

      t.timestamps
    end
  end
end
