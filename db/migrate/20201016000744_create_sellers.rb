class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :store_name
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
