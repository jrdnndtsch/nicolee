class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :date
      t.string :link

      t.timestamps null: false
    end
  end
end
