class CreateAds < ActiveRecord::Migration[6.1]
  def change
    create_table :ads do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.integer :id_user, null: false

      t.timestamps
    end
    add_foreign_key :ads, :users, column: :id_user
  end

end
