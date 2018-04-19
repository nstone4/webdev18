class CreatePhototest2 < ActiveRecord::Migration
  def change
    create_table :phototest2s do |t|
      t.integer :photo_id
      t.string :filename
      t.integer :user_id
      t.timestamp :time
      t.text :caption
    end
  end
end
