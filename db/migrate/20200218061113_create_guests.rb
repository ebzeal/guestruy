class CreateGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|
      t.string :fullname
      t.text :address
      t.string :phone
      t.string :email
      t.string :gender
      t.text :prayers

      t.timestamps
    end
  end
end
