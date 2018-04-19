class CreatePhotoTests < ActiveRecord::Migration
  def change
    create_table :photo_tests do |t|
      t.integer :photo_id
      t.string :filename
      t.integer :user_id
      t.timestamp :time
      t.text :caption

      t.timestamps null: false
    end
  end
end
