class AddDonateToNgos < ActiveRecord::Migration[5.0]
  def change
    add_column :ngos, :donate, :string
  end
end
