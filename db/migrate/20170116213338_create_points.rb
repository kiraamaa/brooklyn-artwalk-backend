class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.float :lat
      t.float :lng
      t.string :title
      t.string :content
      t.boolean :done
      t.references :artwalk, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
