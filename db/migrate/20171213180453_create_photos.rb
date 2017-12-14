class CreatePhotos < ActiveRecord::Migration[5.1]
  
  def change
    drop_table :photos 
    create_table :photos do |t|
      t.references :annonce, foreign_key: true

      t.timestamps
    end
  end
end
