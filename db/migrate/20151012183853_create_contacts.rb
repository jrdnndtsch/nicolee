class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :linked_in
      t.string :phone

      t.timestamps null: false
    end
  end
end
