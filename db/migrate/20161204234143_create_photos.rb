class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :venue_id
      t.string :image_url

      t.timestamps

    end
  end
end
