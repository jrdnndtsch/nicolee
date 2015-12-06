class CreateAboutNicolees < ActiveRecord::Migration
  def change
    create_table :about_nicolees do |t|
      t.text :description
      t.string :photo

      t.timestamps null: false
    end
  end
end
