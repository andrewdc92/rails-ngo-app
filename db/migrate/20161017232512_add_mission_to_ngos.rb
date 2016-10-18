class AddMissionToNgos < ActiveRecord::Migration[5.0]
  def change
    add_column  :ngos, :misson, :text
  end
end
