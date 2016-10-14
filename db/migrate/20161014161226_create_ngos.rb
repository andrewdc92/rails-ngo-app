class CreateNgos < ActiveRecord::Migration[5.0]
  def change
    create_table :ngos do |t|
      t.string :name
      t.string :category
      t.string :website
      t.string :content

      t.timestamps
    end
  end
end
