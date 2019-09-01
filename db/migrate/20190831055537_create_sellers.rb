class CreateSellers < ActiveRecord::Migration[5.1]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
