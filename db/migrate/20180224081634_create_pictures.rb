class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.text :content
      t.text :image
      t.integer :user_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
