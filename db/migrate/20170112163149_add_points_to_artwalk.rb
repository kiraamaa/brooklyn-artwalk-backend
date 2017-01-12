class AddPointsToArtwalk < ActiveRecord::Migration
  def change
    add_column :artwalks, :points, :string, array: true, default: []
  end
end
