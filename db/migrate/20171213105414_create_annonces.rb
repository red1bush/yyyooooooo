class CreateAnnonces < ActiveRecord::Migration[5.1]
  def change
    create_table :annonces do |t|
      t.string :name
      t.text :description
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
