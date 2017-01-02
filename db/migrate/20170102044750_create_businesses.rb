class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :website
      t.string :cover_photo
      t.integer :ownership_id

      t.timestamps

    end
  end
end
