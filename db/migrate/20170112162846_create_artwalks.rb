class CreateArtwalks < ActiveRecord::Migration
  def change
    create_table :artwalks do |t|
      t.string :title
      t.string :length

      t.timestamps null: false
    end
  end
end
